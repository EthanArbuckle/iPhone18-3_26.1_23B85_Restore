@interface SearchUIPhotosLibraryImage
- (id)fetchAsset;
- (void)fetchAssetWithCompletionHandler:(id)a3;
- (void)rejectPerson:(id)a3;
@end

@implementation SearchUIPhotosLibraryImage

- (id)fetchAsset
{
  v2 = [(SearchUIImage *)self sfImage];
  v3 = [v2 photoIdentifier];

  if (v3)
  {
    v4 = +[SearchUIPhotoAssetCache sharedCache];
    v5 = [v4 assetForImage:v2];
  }

  else
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SearchUIPhotosLibraryImage *)v6 fetchAsset];
    }

    v5 = 0;
  }

  return v5;
}

- (void)fetchAssetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIImage *)self sfImage];
  v6 = [v5 photoIdentifier];

  if (v6)
  {
    v7 = +[SearchUIPhotoAssetCache sharedCache];
    [v7 fetchAssetForImage:v5 completionHandler:v4];
  }

  else
  {
    v8 = SearchUIGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPhotosLibraryImage fetchAssetWithCompletionHandler:v8];
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)rejectPerson:(id)a3
{
  v4 = [(SearchUIImage *)self sfImage];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke;
  v6[3] = &unk_1E85B3E90;
  v7 = v4;
  v5 = v4;
  [(SearchUIPhotosLibraryImage *)self fetchAssetWithCompletionHandler:v6];
}

void __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) photoIdentifier];
  v5 = +[SearchUIPhotosUtilities personWithIdentifier:isSyndicated:](SearchUIPhotosUtilities, "personWithIdentifier:isSyndicated:", v4, [*(a1 + 32) isSyndicated]);

  v6 = [v5 photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke_2;
  v10[3] = &unk_1E85B26A8;
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v7 = v3;
  v8 = v6;
  v9 = v5;
  [v8 performChanges:v10 completionHandler:&__block_literal_global_34];
}

void __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke_2(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978980];
  v3 = [*(a1 + 32) localIdentifier];
  v4 = [v2 uuidFromLocalIdentifier:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(personForFace) = %@", v4];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(personForTorso) = %@", v4, v6];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v9 = [v5 orPredicateWithSubpredicates:v8];

  v10 = [SearchUIPhotosUtilities fetchOptionsForLibrary:*(a1 + 40)];
  [v10 setIncludeTorsoAndFaceDetectionData:1];
  [v10 setInternalPredicate:v9];
  v11 = [MEMORY[0x1E69787C8] fetchFacesInAsset:*(a1 + 48) options:v10];
  v12 = [v11 fetchedObjects];

  v13 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  if (([*(a1 + 32) isVerified] & 1) == 0)
  {
    [v13 setVerified:1];
  }

  [v13 removeFaces:v12];
  [v13 addRejectedFaces:v12 forCluster:0];
}

void __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = SearchUIGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke_3_cold_1(v4, v5);
    }
  }
}

void __43__SearchUIPhotosLibraryImage_rejectPerson___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPhotosLibraryImage: rejectPersonError: %@", &v2, 0xCu);
}

@end