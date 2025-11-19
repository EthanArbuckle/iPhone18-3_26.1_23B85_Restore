@interface SearchUIPhotosMemoryImage
- (id)fetchAsset;
- (void)fetchAsset;
- (void)fetchAssetWithCompletionHandler:(id)a3;
@end

@implementation SearchUIPhotosMemoryImage

- (id)fetchAsset
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIImage *)self sfImage];
  v4 = [v3 memoryIdentifier];

  v5 = SearchUIGeneralLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SearchUIImage *)self sfImage];
      v8 = [v7 memoryIdentifier];
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "SearchUIPhotosMemoryImage: memoryIdentifier: %@", buf, 0xCu);
    }

    v6 = [SearchUIPhotosUtilities sharedPhotoLibraryIsSyndicated:0];
    if (v6)
    {
      v9 = [SearchUIPhotosUtilities fetchOptionsForLibrary:v6];
      [v9 setIncludePendingMemories:1];
      [v9 setIncludeLocalMemories:1];
      [v9 setIncludeStoryMemories:1];
    }

    else
    {
      v9 = 0;
    }

    v11 = MEMORY[0x1E69788F0];
    v12 = MEMORY[0x1E695DFD8];
    v13 = [(SearchUIImage *)self sfImage];
    v14 = [v13 memoryIdentifier];
    v24 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v16 = [v12 setWithArray:v15];
    v17 = [v11 localIdentifiersWithUUIDs:v16];

    v18 = [v17 allObjects];
    v19 = [MEMORY[0x1E69788F0] fetchMemoriesWithLocalIdentifiers:v18 options:v9];
    if ([v19 count])
    {
      v20 = MEMORY[0x1E6978630];
      v21 = [v19 firstObject];
      v22 = [v20 fetchKeyAssetsInAssetCollection:v21 options:v9];

      v10 = [v22 firstObject];
    }

    else
    {
      v22 = SearchUIGeneralLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(SearchUIPhotosMemoryImage *)v18 fetchAsset];
      }

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SearchUIPhotosMemoryImage *)v6 fetchAsset];
    }

    v10 = 0;
  }

  return v10;
}

- (void)fetchAssetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIPhotosMemoryImage *)self fetchAsset];
  if (!v5)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPhotosMemoryImage fetchAssetWithCompletionHandler:v6];
    }
  }

  v4[2](v4, v5);
}

- (void)fetchAsset
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 firstObject];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPhotosMemoryImage: no collection found for identifier %@", &v4, 0xCu);
}

@end