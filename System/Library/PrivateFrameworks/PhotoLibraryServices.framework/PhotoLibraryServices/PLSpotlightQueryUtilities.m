@interface PLSpotlightQueryUtilities
+ (id)countAssetsQueryStringForLibraryIdentifier:(int64_t)a3;
+ (id)searchQueryForLibrary:(id)a3 queryString:(id)a4;
+ (id)searchQueryForLibraryIdentifier:(int64_t)a3 pathManager:(id)a4 queryString:(id)a5;
+ (void)countForSearchQuery:(id)a3 timedDispatchGroup:(id)a4 completion:(id)a5;
@end

@implementation PLSpotlightQueryUtilities

+ (void)countForSearchQuery:(id)a3 timedDispatchGroup:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 enterWithName:@"CSSearchQuery"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__PLSpotlightQueryUtilities_countForSearchQuery_timedDispatchGroup_completion___block_invoke;
  v19[3] = &unk_1E7575FA8;
  v11 = v10;
  v20 = v11;
  [v7 setCompletionHandler:v19];
  [v7 start];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PLSpotlightQueryUtilities_countForSearchQuery_timedDispatchGroup_completion___block_invoke_2;
  v15[3] = &unk_1E7576F38;
  v16 = v11;
  v17 = v7;
  v18 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v11;
  [v9 notify:v15];
}

void __79__PLSpotlightQueryUtilities_countForSearchQuery_timedDispatchGroup_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69BF2D0];
  if (a2)
  {
    v4 = [MEMORY[0x1E69BF2D0] failureWithError:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 successWithResult:v5];

    v4 = v6;
  }

  v7 = v4;
  [v2 leaveWithResult:v4];
}

void __79__PLSpotlightQueryUtilities_countForSearchQuery_timedDispatchGroup_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 isFailure];

  if (v3)
  {
    v6 = [*(a1 + 32) result];
  }

  else
  {
    v4 = MEMORY[0x1E69BF2D0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "foundItemCount")}];
    v6 = [v4 successWithResult:v5];
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)searchQueryForLibraryIdentifier:(int64_t)a3 pathManager:(id)a4 queryString:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E6964E70]);
  [v9 setDisableBlockingOnIndex:1];
  if (a3 <= 1)
  {
    v14[0] = *MEMORY[0x1E69BFF18];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v9 setBundleIDs:v10];
  }

  if ([PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:a3])
  {
    v11 = [v7 spotlightSearchIndexPath];
    v12 = [objc_alloc(MEMORY[0x1E6964E30]) initWithPath:v11 queryString:v8 context:v9];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v8 queryContext:v9];
  }

  return v12;
}

+ (id)searchQueryForLibrary:(id)a3 queryString:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 libraryServicesManager];

  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightQueryUtilities.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"library.libraryServicesManager != nil"}];
  }

  v10 = [v8 libraryServicesManager];
  v11 = [v10 wellKnownPhotoLibraryIdentifier];
  v12 = [v8 pathManager];

  v13 = [a1 searchQueryForLibraryIdentifier:v11 pathManager:v12 queryString:v7];

  return v13;
}

+ (id)countAssetsQueryStringForLibraryIdentifier:(int64_t)a3
{
  v3 = a3 == 3;
  if (a3 == 3)
  {
    v4 = @"%@ > 0 && %@ > 0";
  }

  else
  {
    v4 = @"%@ == %@";
  }

  v5 = MEMORY[0x1E6963FC0];
  if (!v3)
  {
    v5 = MEMORY[0x1E6964820];
  }

  v6 = *v5;
  v7 = *MEMORY[0x1E6964770];
  if (!v3)
  {
    v7 = @"com.apple.photos.search.result.collection.asset";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, v6, v7];

  return v8;
}

@end