@interface VUIMPMediaItemEntityTypesOperation
- (BOOL)_canUseCheapEntityCheckWithMediaEntityType:(id)type;
- (BOOL)_mediaLibraryHasEpisodes;
- (BOOL)_mediaLibraryHasHasHomeVideos;
- (BOOL)_mediaLibraryHasLocalMediaItems;
- (BOOL)_mediaLibraryHasMediaItemsWithQuery:(id)query;
- (BOOL)_mediaLibraryHasMovieRentals;
- (BOOL)_mediaLibraryHasMovies;
- (VUIMPMediaItemEntityTypesOperation)init;
- (VUIMPMediaItemEntityTypesOperation)initWithMPMediaLibrary:(id)library;
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

- (VUIMPMediaItemEntityTypesOperation)initWithMPMediaLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMPMediaItemEntityTypesOperation;
  v6 = [(VUIMPMediaItemEntityTypesOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, library);
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

  _mediaLibraryHasLocalMediaItems = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasLocalMediaItems];
  v9 = objc_alloc_init(VUIMediaItemEntityTypesFetchResponse);
  [(VUIMediaItemEntityTypesFetchResponse *)v9 setMediaItemEntityTypes:v10];
  [(VUIMediaItemEntityTypesFetchResponse *)v9 setLocalMediaItemsAvailable:_mediaLibraryHasLocalMediaItems];
  [(VUIMPMediaItemEntityTypesOperation *)self setResponse:v9];
  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

- (BOOL)_mediaLibraryHasMovies
{
  mediaLibrary = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType movie];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    hasMovies = [mediaLibrary hasMovies];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_moviesQueryWithMediaLibrary:mediaLibrary];
    hasMovies = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return hasMovies;
}

- (BOOL)_mediaLibraryHasMovieRentals
{
  mediaLibrary = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType movieRental];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    hasMovieRentals = [mediaLibrary hasMovieRentals];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_movieRentalsQueryWithMediaLibrary:mediaLibrary];
    hasMovieRentals = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return hasMovieRentals;
}

- (BOOL)_mediaLibraryHasEpisodes
{
  mediaLibrary = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType episode];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    hasTVShows = [mediaLibrary hasTVShows];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_episodesQueryWithMediaLibrary:mediaLibrary];
    hasTVShows = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return hasTVShows;
}

- (BOOL)_mediaLibraryHasHasHomeVideos
{
  mediaLibrary = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  v4 = +[VUIMediaEntityType homeVideo];
  v5 = [(VUIMPMediaItemEntityTypesOperation *)self _canUseCheapEntityCheckWithMediaEntityType:v4];

  if (v5)
  {
    hasHomeVideos = [mediaLibrary hasHomeVideos];
  }

  else
  {
    v7 = [MEMORY[0x1E6970618] vui_homeVideosQueryWithMediaLibrary:mediaLibrary];
    hasHomeVideos = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];
  }

  return hasHomeVideos;
}

- (BOOL)_mediaLibraryHasLocalMediaItems
{
  mediaLibrary = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  vui_isDeviceMediaLibrary = [mediaLibrary vui_isDeviceMediaLibrary];

  if (!vui_isDeviceMediaLibrary)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E6970608] vui_isLocalPredicate:1 comparison:0];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  v7 = [objc_alloc(MEMORY[0x1E6970618]) initWithFilterPredicates:v6];
  v8 = [(VUIMPMediaItemEntityTypesOperation *)self _mediaLibraryHasMediaItemsWithQuery:v7];

  return v8;
}

- (BOOL)_canUseCheapEntityCheckWithMediaEntityType:(id)type
{
  typeCopy = type;
  mediaLibrary = [(VUIMPMediaItemEntityTypesOperation *)self mediaLibrary];
  vui_isDeviceMediaLibrary = [mediaLibrary vui_isDeviceMediaLibrary];

  if (vui_isDeviceMediaLibrary)
  {
    mediaCategoryType = [typeCopy mediaCategoryType];
    if (mediaCategoryType == 1)
    {
      mEMORY[0x1E69DF780] = [MEMORY[0x1E69DF780] sharedInstance];
      allowsShowingUndownloadedTVShows = [mEMORY[0x1E69DF780] allowsShowingUndownloadedTVShows];
    }

    else
    {
      if (mediaCategoryType)
      {
        v10 = 1;
        goto LABEL_9;
      }

      mEMORY[0x1E69DF780] = [MEMORY[0x1E69DF780] sharedInstance];
      allowsShowingUndownloadedTVShows = [mEMORY[0x1E69DF780] allowsShowingUndownloadedMovies];
    }

    v10 = allowsShowingUndownloadedTVShows;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)_mediaLibraryHasMediaItemsWithQuery:(id)query
{
  queryCopy = query;
  [queryCopy setEntityLimit:1];
  items = [queryCopy items];

  LOBYTE(queryCopy) = [items count] != 0;
  return queryCopy;
}

@end