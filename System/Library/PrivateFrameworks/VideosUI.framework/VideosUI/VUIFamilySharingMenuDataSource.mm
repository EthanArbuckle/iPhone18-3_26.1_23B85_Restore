@interface VUIFamilySharingMenuDataSource
- (VUIFamilySharingMenuDataSource)initWithValidCategories:(id)categories;
- (id)_constructGenreMenuItems;
- (id)_constructGenreTypes;
- (id)_constructMainMenuItems;
- (id)_constructVUIMenuDataSource;
- (id)getGenreByGenreTitle:(id)title;
- (void)_fetchGenres;
- (void)_fetchMovies;
- (void)_fetchRecentPurchases;
- (void)_fetchShows;
- (void)_notifyDelegatesFetchDidComplete;
- (void)startFetch;
@end

@implementation VUIFamilySharingMenuDataSource

- (VUIFamilySharingMenuDataSource)initWithValidCategories:(id)categories
{
  v7.receiver = self;
  v7.super_class = VUIFamilySharingMenuDataSource;
  v3 = [(VUILibraryMenuDataSource *)&v7 initWithValidCategories:categories];
  if (v3)
  {
    +[VUIMediaAPIClient initializeWithAppleTVClientIdentifier];
    v4 = +[VUIMediaAPIClient sharedInstance];
    mediaClient = v3->_mediaClient;
    v3->_mediaClient = v4;

    v3->_hasFetchedRecentPurchases = 0;
    v3->_hasFetchedGenres = 0;
    v3->_hasFetchedMovies = 0;
    v3->_hasFetchedShows = 0;
    v3->_hasRecentPurchases = 0;
    v3->_hasMovies = 0;
    v3->_hasShows = 0;
  }

  return v3;
}

- (void)startFetch
{
  [(VUIFamilySharingMenuDataSource *)self _fetchGenres];
  [(VUIFamilySharingMenuDataSource *)self _fetchRecentPurchases];
  [(VUIFamilySharingMenuDataSource *)self _fetchMovies];

  [(VUIFamilySharingMenuDataSource *)self _fetchShows];
}

- (id)getGenreByGenreTitle:(id)title
{
  v18 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  genres = [(VUIFamilySharingMenuDataSource *)self genres];
  v6 = [genres countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(genres);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        genreTitle = [v9 genreTitle];
        v11 = [genreTitle isEqualToString:titleCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [genres countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_fetchGenres
{
  ownerIdentifier = [(VUIFamilySharingMenuDataSource *)self ownerIdentifier];
  v4 = [VUIMediaAPIRequestFactory genresRequestWithOwnerIdentifier:ownerIdentifier];

  objc_initWeak(&location, self);
  mediaClient = [(VUIFamilySharingMenuDataSource *)self mediaClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VUIFamilySharingMenuDataSource__fetchGenres__block_invoke;
  v6[3] = &unk_1E872EA80;
  objc_copyWeak(&v7, &location);
  [mediaClient fetchContentForUrl:v4 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__VUIFamilySharingMenuDataSource__fetchGenres__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasFetchedGenres:1];
  if (!a3)
  {
    v6 = objc_alloc_init(VUIGenresRequestResponseParser);
    v7 = [(VUIGenresRequestResponseParser *)v6 parseAMSURLResult:v9];
    [WeakRetained setGenres:v7];
  }

  if ([WeakRetained _hasCompletedAllFetches])
  {
    v8 = [WeakRetained _constructVUIMenuDataSource];
    [WeakRetained setMenuItems:v8];
    [WeakRetained _notifyDelegatesFetchDidComplete];
  }
}

- (void)_fetchRecentPurchases
{
  ownerIdentifier = [(VUIFamilySharingMenuDataSource *)self ownerIdentifier];
  v4 = [VUIMediaAPIRequestFactory recentPurchasesRequestWithOwnerIdentifier:ownerIdentifier];

  objc_initWeak(&location, self);
  mediaClient = [(VUIFamilySharingMenuDataSource *)self mediaClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__VUIFamilySharingMenuDataSource__fetchRecentPurchases__block_invoke;
  v6[3] = &unk_1E872EA80;
  objc_copyWeak(&v7, &location);
  [mediaClient fetchContentForUrl:v4 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__VUIFamilySharingMenuDataSource__fetchRecentPurchases__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasFetchedRecentPurchases:1];
  if (!a3)
  {
    v6 = objc_alloc_init(VUIFamilySharingEntityRequestResponseParser);
    v7 = [(VUIFamilySharingEntityRequestResponseParser *)v6 parseAMSURLResult:v9];
    [WeakRetained setHasRecentPurchases:{objc_msgSend(v7, "count") != 0}];
  }

  if ([WeakRetained _hasCompletedAllFetches])
  {
    v8 = [WeakRetained _constructVUIMenuDataSource];
    [WeakRetained setMenuItems:v8];
    [WeakRetained _notifyDelegatesFetchDidComplete];
  }
}

- (void)_fetchMovies
{
  ownerIdentifier = [(VUIFamilySharingMenuDataSource *)self ownerIdentifier];
  v4 = [VUIMediaAPIRequestFactory moviesPurchasesRequestWithOwnerIdentifier:ownerIdentifier sortType:0];

  objc_initWeak(&location, self);
  mediaClient = [(VUIFamilySharingMenuDataSource *)self mediaClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VUIFamilySharingMenuDataSource__fetchMovies__block_invoke;
  v6[3] = &unk_1E872EA80;
  objc_copyWeak(&v7, &location);
  [mediaClient fetchContentForUrl:v4 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__VUIFamilySharingMenuDataSource__fetchMovies__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasFetchedMovies:1];
  if (!a3)
  {
    v6 = objc_alloc_init(VUIFamilySharingEntityRequestResponseParser);
    v7 = [(VUIFamilySharingEntityRequestResponseParser *)v6 parseAMSURLResult:v9];
    [WeakRetained setHasMovies:{objc_msgSend(v7, "count") != 0}];
  }

  if ([WeakRetained _hasCompletedAllFetches])
  {
    v8 = [WeakRetained _constructVUIMenuDataSource];
    [WeakRetained setMenuItems:v8];
    [WeakRetained _notifyDelegatesFetchDidComplete];
  }
}

- (void)_fetchShows
{
  ownerIdentifier = [(VUIFamilySharingMenuDataSource *)self ownerIdentifier];
  v4 = [VUIMediaAPIRequestFactory showsPurchasesRequestWithOwnerIdentifier:ownerIdentifier sortType:0];

  objc_initWeak(&location, self);
  mediaClient = [(VUIFamilySharingMenuDataSource *)self mediaClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__VUIFamilySharingMenuDataSource__fetchShows__block_invoke;
  v6[3] = &unk_1E872EA80;
  objc_copyWeak(&v7, &location);
  [mediaClient fetchContentForUrl:v4 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __45__VUIFamilySharingMenuDataSource__fetchShows__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasFetchedShows:1];
  if (!a3)
  {
    v6 = objc_alloc_init(VUIFamilySharingEntityRequestResponseParser);
    v7 = [(VUIFamilySharingEntityRequestResponseParser *)v6 parseAMSURLResult:v9];
    [WeakRetained setHasShows:{objc_msgSend(v7, "count") != 0}];
  }

  if ([WeakRetained _hasCompletedAllFetches])
  {
    v8 = [WeakRetained _constructVUIMenuDataSource];
    [WeakRetained setMenuItems:v8];
    [WeakRetained _notifyDelegatesFetchDidComplete];
  }
}

- (id)_constructVUIMenuDataSource
{
  _constructMainMenuItems = [(VUIFamilySharingMenuDataSource *)self _constructMainMenuItems];
  _constructGenreMenuItems = [(VUIFamilySharingMenuDataSource *)self _constructGenreMenuItems];
  v5 = [[VUIMenuDataSource alloc] initWithMainMenuItems:_constructMainMenuItems genreMenuItems:_constructGenreMenuItems];
  _constructGenreTypes = [(VUIFamilySharingMenuDataSource *)self _constructGenreTypes];
  [(VUIMenuDataSource *)v5 setGenreTypes:_constructGenreTypes];

  return v5;
}

- (id)_constructMainMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(VUIFamilySharingMenuDataSource *)self hasRecentPurchases])
  {
    [v3 addObject:&unk_1F5E5CC90];
  }

  if ([(VUIFamilySharingMenuDataSource *)self hasMovies])
  {
    [v3 addObject:&unk_1F5E5CCA8];
  }

  if ([(VUIFamilySharingMenuDataSource *)self hasShows])
  {
    [v3 addObject:&unk_1F5E5CCC0];
  }

  _categoryTypesSortComparator = [(VUIFamilySharingMenuDataSource *)self _categoryTypesSortComparator];
  [v3 sortUsingComparator:_categoryTypesSortComparator];

  v5 = [v3 copy];

  return v5;
}

- (id)_constructGenreMenuItems
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  genres = [(VUIFamilySharingMenuDataSource *)self genres];
  v5 = [genres countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(genres);
        }

        genreTitle = [*(*(&v12 + 1) + 8 * i) genreTitle];
        [v3 addObject:genreTitle];
      }

      v6 = [genres countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_constructGenreTypes
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  genres = [(VUIFamilySharingMenuDataSource *)self genres];
  v5 = [genres countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(genres);
        }

        genreIdentifiers = [*(*(&v15 + 1) + 8 * i) genreIdentifiers];
        firstObject = [genreIdentifiers firstObject];

        if (firstObject)
        {
          v11 = VUILibraryGenreFromGenreID([firstObject integerValue]);
        }

        else
        {
          v11 = 0;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        [v3 addObject:v12];
      }

      v6 = [genres countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (void)_notifyDelegatesFetchDidComplete
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __66__VUIFamilySharingMenuDataSource__notifyDelegatesFetchDidComplete__block_invoke;
  v6 = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  v2 = &v3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5(v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __66__VUIFamilySharingMenuDataSource__notifyDelegatesFetchDidComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

@end