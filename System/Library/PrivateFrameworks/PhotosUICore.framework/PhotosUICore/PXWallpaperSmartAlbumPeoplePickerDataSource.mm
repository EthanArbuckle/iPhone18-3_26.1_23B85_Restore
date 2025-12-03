@interface PXWallpaperSmartAlbumPeoplePickerDataSource
+ (void)personsForPrimarySuggestionSubtype:(unsigned __int16)subtype secondarySuggestionSubtype:(unsigned __int16)suggestionSubtype excludingPersonLocalIdentifiers:(id)identifiers photoLibrary:(id)library results:(id)results;
- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)feedback;
@end

@implementation PXWallpaperSmartAlbumPeoplePickerDataSource

+ (void)personsForPrimarySuggestionSubtype:(unsigned __int16)subtype secondarySuggestionSubtype:(unsigned __int16)suggestionSubtype excludingPersonLocalIdentifiers:(id)identifiers photoLibrary:(id)library results:(id)results
{
  suggestionSubtypeCopy = suggestionSubtype;
  subtypeCopy = subtype;
  v44 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  libraryCopy = library;
  resultsCopy = results;
  if (identifiersCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWallpaperSmartAlbumPeoplePickerDataSource.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"excludingPersonLocalIdentifiers"}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXWallpaperSmartAlbumPeoplePickerDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v39 = resultsCopy;
  if (!resultsCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXWallpaperSmartAlbumPeoplePickerDataSource.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"results"}];
  }

  v38 = [MEMORY[0x1E69C15B0] fetchPersonLocalIdentifiersForSuggestionSubtype:subtypeCopy photoLibrary:libraryCopy];
  v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v38];
  [v16 minusSet:identifiersCopy];
  v17 = PLWallpaperGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v16;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumPeoplePickerDataSource] TopPeople local identifiers: %{public}@", buf, 0xCu);
  }

  v37 = [MEMORY[0x1E69C15B0] fetchPersonLocalIdentifiersForSuggestionSubtype:suggestionSubtypeCopy photoLibrary:libraryCopy];
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v37];
  v40 = identifiersCopy;
  [v18 minusSet:identifiersCopy];
  v19 = PLWallpaperGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v18;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumPeoplePickerDataSource] Shuffle People local identifiers: %{public}@", buf, 0xCu);
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:1];
  v41[0] = v21;
  v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v41[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v23];

  v24 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v16];
  [v24 intersectSet:v18];
  v25 = MEMORY[0x1E6978980];
  allObjects = [v24 allObjects];
  v27 = [v25 fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

  v28 = PLWallpaperGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v24;
    _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumPeoplePickerDataSource] VIP: %{public}@", buf, 0xCu);
  }

  v29 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v18];
  [v29 minusSet:v24];
  v30 = MEMORY[0x1E6978980];
  allObjects2 = [v29 allObjects];
  v32 = [v30 fetchPersonsWithLocalIdentifiers:allObjects2 options:librarySpecificFetchOptions];

  v33 = PLWallpaperGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v29;
    _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumPeoplePickerDataSource] non-VIP: %{public}@", buf, 0xCu);
  }

  (v39)[2](v39, v27, v32);
}

- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = objc_opt_class();
  photoLibrary = [(PXPassiveContentPeoplePickerDataSourceBase *)self photoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__PXWallpaperSmartAlbumPeoplePickerDataSource_computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback___block_invoke;
  v7[3] = &unk_1E7737220;
  v7[4] = self;
  [v5 personsForPrimarySuggestionSubtype:602 secondarySuggestionSubtype:652 excludingPersonLocalIdentifiers:feedbackCopy photoLibrary:photoLibrary results:v7];
}

void __115__PXWallpaperSmartAlbumPeoplePickerDataSource_computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setVipPersonsFetchResult:v7];
  v8 = [v7 fetchedObjects];

  [*(a1 + 32) setVipPersons:v8];
  [*(a1 + 32) setNonVIPPersonsFetchResult:v6];
  v9 = [v6 fetchedObjects];

  [*(a1 + 32) setNonVIPPersons:v9];
}

@end