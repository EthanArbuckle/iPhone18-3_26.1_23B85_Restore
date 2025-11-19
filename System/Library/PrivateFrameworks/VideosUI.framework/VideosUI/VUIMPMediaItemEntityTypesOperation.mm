@interface VUIMPMediaItemEntityTypesOperation
- (BOOL)_canUseCheapEntityCheckWithMediaEntityType:(id)a3;
- (BOOL)_mediaLibraryHasEpisodes;
- (BOOL)_mediaLibraryHasHasHomeVideos;
- (BOOL)_mediaLibraryHasLocalMediaItems;
- (BOOL)_mediaLibraryHasMediaItemsWithQuery:(id)a3;
- (BOOL)_mediaLibraryHasMovieRentals;
- (BOOL)_mediaLibraryHasMovies;
- (VUIMPMediaItemEntityTypesOperation)init;
- (VUIMPMediaItemEntityTypesOperation)initWithMPMediaLibrary:(id)a3;
- (void)executionDidBegin;
@end

@implementation VUIMPMediaItemEntityTypesOperation

- (VUIMPMediaItemEntityTypesOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaItemEntityTypesOperation)initWithMPMediaLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMPMediaItemEntityTypesOperation;
  v6 = [(VUIMPMediaItemEntityTypesOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, a3);
  }

  return v7;
}

- (void)executionDidBegin
{
  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if ([(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasEpisodes])
  {
    v3 = +[VUIMediaEntityType episode];
    [v10 addObject:v3];
  }

  if ([(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasHasHomeVideos])
  {
    v4 = +[VUIMediaEntityType homeVideo];
    [v10 addObject:v4];
  }

  if ([(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMovies])
  {
    v5 = +[VUIMediaEntityType movie];
    [v10 addObject:v5];
  }

  if ([(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMovieRentals])
  {
    v6 = +[VUIMediaEntityType movieRental];
    [v10 addObject:v6];
  }

  v7 = +[VUIMediaLibraryUtilities mediaItemEntityTypesSortComparator];
  [v10 sortUsingComparator:v7];

  v8 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasLocalMediaItems];
  v9 = objc_alloc_init(VUIMediaItemEntityTypesFetchResponse);
  [(VUIMediaItemEntityTypesFetchResponse *)v9 setMediaItemEntityTypes:v10];
  [(VUIMediaItemEntityTypesFetchResponse *)v9 setLocalMediaItemsAvailable:v8];
  [(VUIMPMediaItemEntityTypesOperation *)self setResponse:v9];
  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

- (BOOL)_mediaLibraryHasMovies
{
  v3 = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType movie];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    v6 = [v3 hasMovies];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_moviesQueryWithMediaLibrary:v3];
    v6 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return v6;
}

- (BOOL)_mediaLibraryHasMovieRentals
{
  v3 = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType movieRental];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    v6 = [v3 hasMovieRentals];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_movieRentalsQueryWithMediaLibrary:v3];
    v6 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return v6;
}

- (BOOL)_mediaLibraryHasEpisodes
{
  v3 = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType episode];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    v6 = [v3 hasTVShows];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_episodesQueryWithMediaLibrary:v3];
    v6 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return v6;
}

- (BOOL)_mediaLibraryHasHasHomeVideos
{
  v3 = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType homeVideo];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    v6 = [v3 hasHomeVideos];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_homeVideosQueryWithMediaLibrary:v3];
    v6 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return v6;
}

- (BOOL)_mediaLibraryHasLocalMediaItems
{
  v3 = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = [v3 vui_isDeviceMediaLibrary];

  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E6970608] vui_isLocalPredicate:1 comparison:0];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  v7 = [objc_alloc(MEMORY[0x1E6970618]) initWithFilterPredicates:v6];
  v8 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];

  return v8;
}

- (BOOL)_canUseCheapEntityCheckWithMediaEntityType:(id)a3
{
  v4 = a3;
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v6 = [v5 vui_isDeviceMediaLibrary];

  if (v6)
  {
    v7 = [v4 mediaCategoryType];
    if (v7 == 1)
    {
      v8 = [MEMORY[0x1E69DF780] sharedInstance];
      v9 = [v8 allowsShowingUndownloadedTVShows];
    }

    else
    {
      if (v7)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v8 = [MEMORY[0x1E69DF780] sharedInstance];
      v9 = [v8 allowsShowingUndownloadedMovies];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)_mediaLibraryHasMediaItemsWithQuery:(id)a3
{
  v3 = a3;
  [v3 setEntityLimit:1];
  v4 = [v3 items];

  LOBYTE(v3) = [v4 count] != 0;
  return v3;
}

@end