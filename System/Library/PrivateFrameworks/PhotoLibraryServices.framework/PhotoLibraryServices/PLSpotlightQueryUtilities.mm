@interface PLSpotlightQueryUtilities
+ (id)countAssetsQueryStringForLibraryIdentifier:(int64_t)identifier;
+ (id)searchQueryForLibrary:(id)library queryString:(id)string;
+ (id)searchQueryForLibraryIdentifier:(int64_t)identifier pathManager:(id)manager queryString:(id)string;
+ (void)countForSearchQuery:(id)query timedDispatchGroup:(id)group completion:(id)completion;
@end

@implementation PLSpotlightQueryUtilities

+ (void)countForSearchQuery:(id)query timedDispatchGroup:(id)group completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  groupCopy = group;
  v10 = [groupCopy enterWithName:@"CSSearchQuery"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__PLSpotlightQueryUtilities_countForSearchQuery_timedDispatchGroup_completion___block_invoke;
  v19[3] = &unk_1E7575FA8;
  v11 = v10;
  v20 = v11;
  [queryCopy setCompletionHandler:v19];
  [queryCopy start];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PLSpotlightQueryUtilities_countForSearchQuery_timedDispatchGroup_completion___block_invoke_2;
  v15[3] = &unk_1E7576F38;
  v16 = v11;
  v17 = queryCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queryCopy;
  v14 = v11;
  [groupCopy notify:v15];
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

+ (id)searchQueryForLibraryIdentifier:(int64_t)identifier pathManager:(id)manager queryString:(id)string
{
  v14[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  stringCopy = string;
  v9 = objc_alloc_init(MEMORY[0x1E6964E70]);
  [v9 setDisableBlockingOnIndex:1];
  if (identifier <= 1)
  {
    v14[0] = *MEMORY[0x1E69BFF18];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v9 setBundleIDs:v10];
  }

  if ([PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:identifier])
  {
    spotlightSearchIndexPath = [managerCopy spotlightSearchIndexPath];
    v12 = [objc_alloc(MEMORY[0x1E6964E30]) initWithPath:spotlightSearchIndexPath queryString:stringCopy context:v9];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:stringCopy queryContext:v9];
  }

  return v12;
}

+ (id)searchQueryForLibrary:(id)library queryString:(id)string
{
  stringCopy = string;
  libraryCopy = library;
  libraryServicesManager = [libraryCopy libraryServicesManager];

  if (!libraryServicesManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightQueryUtilities.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"library.libraryServicesManager != nil"}];
  }

  libraryServicesManager2 = [libraryCopy libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager2 wellKnownPhotoLibraryIdentifier];
  pathManager = [libraryCopy pathManager];

  v13 = [self searchQueryForLibraryIdentifier:wellKnownPhotoLibraryIdentifier pathManager:pathManager queryString:stringCopy];

  return v13;
}

+ (id)countAssetsQueryStringForLibraryIdentifier:(int64_t)identifier
{
  v3 = identifier == 3;
  if (identifier == 3)
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