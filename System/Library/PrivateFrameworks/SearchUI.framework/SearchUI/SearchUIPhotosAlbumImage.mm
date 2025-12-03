@interface SearchUIPhotosAlbumImage
- (id)fetchAsset;
- (void)fetchAsset;
- (void)fetchAssetWithCompletionHandler:(id)handler;
@end

@implementation SearchUIPhotosAlbumImage

- (id)fetchAsset
{
  v27 = *MEMORY[0x1E69E9840];
  sfImage = [(SearchUIImage *)self sfImage];
  albumIdentifier = [sfImage albumIdentifier];

  v5 = SearchUIGeneralLog();
  v6 = v5;
  if (albumIdentifier)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sfImage2 = [(SearchUIImage *)self sfImage];
      albumIdentifier2 = [sfImage2 albumIdentifier];
      *buf = 138412290;
      v26 = albumIdentifier2;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "SearchUIPhotosAlbumImage: albumIdentifier: %@", buf, 0xCu);
    }

    v6 = [SearchUIPhotosUtilities sharedPhotoLibraryIsSyndicated:0];
    if (v6)
    {
      v9 = [SearchUIPhotosUtilities fetchOptionsForLibrary:v6];
    }

    else
    {
      v9 = 0;
    }

    v11 = MEMORY[0x1E6978650];
    v12 = MEMORY[0x1E695DFD8];
    sfImage3 = [(SearchUIImage *)self sfImage];
    albumIdentifier3 = [sfImage3 albumIdentifier];
    v24 = albumIdentifier3;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v16 = [v12 setWithArray:v15];
    v17 = [v11 localIdentifiersWithUUIDs:v16];

    allObjects = [v17 allObjects];
    v19 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithLocalIdentifiers:allObjects options:v9];
    if ([v19 count])
    {
      v20 = MEMORY[0x1E6978630];
      firstObject = [v19 firstObject];
      v22 = [v20 fetchKeyAssetsInAssetCollection:firstObject options:v9];

      firstObject2 = [v22 firstObject];
    }

    else
    {
      v22 = SearchUIGeneralLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(SearchUIPhotosAlbumImage *)allObjects fetchAsset];
      }

      firstObject2 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SearchUIPhotosAlbumImage *)v6 fetchAsset];
    }

    firstObject2 = 0;
  }

  return firstObject2;
}

- (void)fetchAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  fetchAsset = [(SearchUIPhotosAlbumImage *)self fetchAsset];
  if (!fetchAsset)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPhotosAlbumImage fetchAssetWithCompletionHandler:v6];
    }
  }

  handlerCopy[2](handlerCopy, fetchAsset);
}

- (void)fetchAsset
{
  v6 = *MEMORY[0x1E69E9840];
  firstObject = [self firstObject];
  v4 = 138412290;
  v5 = firstObject;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPhotosAlbumImage: no collection found for identifier %@", &v4, 0xCu);
}

@end