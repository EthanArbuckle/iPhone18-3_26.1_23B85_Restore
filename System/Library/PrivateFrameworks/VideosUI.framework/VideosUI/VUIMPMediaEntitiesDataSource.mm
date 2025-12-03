@interface VUIMPMediaEntitiesDataSource
- (VUIMPMediaEntitiesDataSource)initWithMediaLibrary:(id)library fetchRequest:(id)request;
- (_NSRange)requestedRange;
- (id)_getPurchaseHistoryIdsFromMediaEntities:(id)entities inRange:(_NSRange)range;
- (void)_fetchArtworkInfoIfNecessary;
- (void)_loadImageUrlsByPurchaseHistoryIds:(id)ids;
- (void)_notifyDelegateFetchDidComplete;
- (void)controller:(id)controller fetchRequests:(id)requests didCompleteWithResult:(id)result;
- (void)controller:(id)controller fetchRequests:(id)requests didFailWithError:(id)error;
- (void)dealloc;
- (void)setShouldPauseAutoFetchingArtworkInfoDictionaries:(BOOL)dictionaries;
- (void)startFetch;
@end

@implementation VUIMPMediaEntitiesDataSource

- (VUIMPMediaEntitiesDataSource)initWithMediaLibrary:(id)library fetchRequest:(id)request
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = VUIMPMediaEntitiesDataSource;
  v8 = [(VUIMediaEntitiesDataSource *)&v11 initWithFetchRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, library);
    v9->_requestedRange = xmmword_1E4296B90;
    v9->_inFlightArtworkRequests = 0;
  }

  return v9;
}

- (void)startFetch
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [VUIMediaEntitiesFetchController alloc];
  mediaLibrary = [(VUIMPMediaEntitiesDataSource *)self mediaLibrary];
  fetchRequest = [(VUIMediaEntitiesDataSource *)self fetchRequest];
  v12[0] = fetchRequest;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [(VUIMediaEntitiesFetchController *)v3 initWithMediaLibrary:mediaLibrary fetchRequests:v6];
  [(VUIMPMediaEntitiesDataSource *)self setFetchController:v7];

  fetchController = [(VUIMPMediaEntitiesDataSource *)self fetchController];
  [fetchController setDelegate:self];

  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:0];
  mediaLibrary2 = [(VUIMPMediaEntitiesDataSource *)self mediaLibrary];
  v10 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:mediaLibrary2];
  fetchController2 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
  [v10 addFetchController:fetchController2];
}

- (void)setShouldPauseAutoFetchingArtworkInfoDictionaries:(BOOL)dictionaries
{
  shouldPauseAutoFetchingArtworkInfoDictionaries = self->_shouldPauseAutoFetchingArtworkInfoDictionaries;
  self->_shouldPauseAutoFetchingArtworkInfoDictionaries = dictionaries;
  if (shouldPauseAutoFetchingArtworkInfoDictionaries && !dictionaries && !self->_inFlightArtworkRequests)
  {
    [(VUIMPMediaEntitiesDataSource *)self _fetchArtworkInfoIfNecessary];
  }
}

- (void)dealloc
{
  fetchController = [(VUIMPMediaEntitiesDataSource *)self fetchController];

  if (fetchController)
  {
    mediaLibrary = [(VUIMPMediaEntitiesDataSource *)self mediaLibrary];
    v5 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:mediaLibrary];
    fetchController2 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
    [v5 removeFetchController:fetchController2];

    fetchController3 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
    [fetchController3 setDelegate:0];
  }

  v8.receiver = self;
  v8.super_class = VUIMPMediaEntitiesDataSource;
  [(VUIMPMediaEntitiesDataSource *)&v8 dealloc];
}

- (void)controller:(id)controller fetchRequests:(id)requests didCompleteWithResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "[VUIMPMediaEntitiesDataSource %p] - Fetch completed successfully", buf, 0xCu);
  }

  fetchResponses = [resultCopy fetchResponses];

  if (fetchResponses)
  {
    firstObject = [fetchResponses firstObject];
    mediaEntities = [firstObject mediaEntities];

    firstObject2 = [fetchResponses firstObject];
    grouping = [firstObject2 grouping];
  }

  else
  {
    grouping = MEMORY[0x1E695E0F0];
    mediaEntities = MEMORY[0x1E695E0F0];
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__VUIMPMediaEntitiesDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke;
  v20[3] = &unk_1E872EDB8;
  v14 = v13;
  v21 = v14;
  [mediaEntities enumerateObjectsUsingBlock:v20];
  array = [v14 array];
  if ([(VUIMediaEntitiesDataSource *)self shouldAutoFetchArtworkInfoDictionaries])
  {
    mediaEntitiesSet = [(VUIMPMediaEntitiesDataSource *)self mediaEntitiesSet];

    if (mediaEntitiesSet)
    {
      v17 = [v14 mutableCopy];
      mediaEntitiesSet2 = [(VUIMPMediaEntitiesDataSource *)self mediaEntitiesSet];
      [v17 minusOrderedSet:mediaEntitiesSet2];

      array2 = [v17 array];
    }

    else
    {
      array2 = array;
    }
  }

  else
  {
    array2 = 0;
  }

  [(VUIMPMediaEntitiesDataSource *)self setMediaEntitiesSet:v14];
  [(VUIMediaEntitiesDataSource *)self setMediaEntities:array];
  [(VUIMPMediaEntitiesDataSource *)self setMediaEntitiesToFetch:array2];
  [(VUIMPMediaEntitiesDataSource *)self setRequestedRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(VUIMediaEntitiesDataSource *)self setGrouping:grouping];
  [(VUIMPMediaEntitiesDataSource *)self _fetchArtworkInfoIfNecessary];
  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:1];
  [(VUIMPMediaEntitiesDataSource *)self _notifyDelegateFetchDidComplete];
}

void __79__VUIMPMediaEntitiesDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_notifyDelegateFetchDidComplete
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __63__VUIMPMediaEntitiesDataSource__notifyDelegateFetchDidComplete__block_invoke;
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

void __63__VUIMPMediaEntitiesDataSource__notifyDelegateFetchDidComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

- (void)controller:(id)controller fetchRequests:(id)requests didFailWithError:(id)error
{
  controllerCopy = controller;
  requestsCopy = requests;
  errorCopy = error;
  v11 = MEMORY[0x1E695E0F0];
  [(VUIMediaEntitiesDataSource *)self setMediaEntities:MEMORY[0x1E695E0F0]];
  [(VUIMediaEntitiesDataSource *)self setGrouping:v11];
  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:1];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __74__VUIMPMediaEntitiesDataSource_controller_fetchRequests_didFailWithError___block_invoke;
  v16 = &unk_1E872E4B8;
  objc_copyWeak(&v17, &location);
  v12 = &v13;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v15(v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __74__VUIMPMediaEntitiesDataSource_controller_fetchRequests_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

- (void)_fetchArtworkInfoIfNecessary
{
  if (!self->_shouldPauseAutoFetchingArtworkInfoDictionaries && [(NSArray *)self->_mediaEntitiesToFetch count])
  {
    location = self->_requestedRange.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = location + self->_requestedRange.length + 1;
    }

    v5 = [(VUIMPMediaEntitiesDataSource *)self _getPurchaseHistoryIdsFromMediaEntities:self->_mediaEntitiesToFetch inRange:v4, 74];
    v6 = v5;
    if (v5)
    {
      v8 = v5;
      v7 = [v5 count];
      v6 = v8;
      if (v7)
      {
        self->_requestedRange.location = v4;
        self->_requestedRange.length = 74;
        [(VUIMPMediaEntitiesDataSource *)self _loadImageUrlsByPurchaseHistoryIds:v8];
        v6 = v8;
      }
    }
  }
}

- (void)_loadImageUrlsByPurchaseHistoryIds:(id)ids
{
  v15 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  objc_initWeak(&location, self);
  [(VUIMPMediaEntitiesDataSource *)self setInFlightArtworkRequests:[(VUIMPMediaEntitiesDataSource *)self inFlightArtworkRequests]+ 1];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    inFlightArtworkRequests = [(VUIMPMediaEntitiesDataSource *)self inFlightArtworkRequests];
    *buf = 134218240;
    selfCopy = self;
    v13 = 2048;
    v14 = inFlightArtworkRequests;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIMPMediaEntitiesDataSource %p] - Begining to fetch artwork by purchase history ids number of request %ld", buf, 0x16u);
  }

  v7 = +[VUICloudClient sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__VUIMPMediaEntitiesDataSource__loadImageUrlsByPurchaseHistoryIds___block_invoke;
  v8[3] = &unk_1E872EE08;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v7 loadArtworkURLsForPurchaseHistoryIDs:idsCopy completionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__VUIMPMediaEntitiesDataSource__loadImageUrlsByPurchaseHistoryIds___block_invoke(uint64_t a1, void *a2, char a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 134217984;
    v22 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[VUIMPMediaEntitiesDataSource %p] - Fetched artwork by purchase history ids", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained artworkInfoDictionaryByPurchaseID];
    v11 = v10 == 0;

    if (v11)
    {
      [v9 setArtworkInfoDictionaryByPurchaseID:v5];
    }

    else
    {
      v12 = [v9 artworkInfoDictionaryByPurchaseID];
      v13 = [v12 mutableCopy];

      [v13 addEntriesFromDictionary:v5];
      [v9 setArtworkInfoDictionaryByPurchaseID:v13];
    }

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __67__VUIMPMediaEntitiesDataSource__loadImageUrlsByPurchaseHistoryIds___block_invoke_10;
    v18 = &unk_1E872EDE0;
    objc_copyWeak(&v19, (a1 + 40));
    v20 = a3;
    v14 = &v15;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v17(v14);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }

    [v9 setHasCompletedInitialFetch:1];
    objc_destroyWeak(&v19);
  }
}

void __67__VUIMPMediaEntitiesDataSource__loadImageUrlsByPurchaseHistoryIds___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 dataSourceDidFinishFetchingArtwork:WeakRetained];
  }

  if (*(a1 + 40) == 1)
  {
    [WeakRetained setInFlightArtworkRequests:{objc_msgSend(WeakRetained, "inFlightArtworkRequests") - 1}];
    if (([WeakRetained shouldPauseAutoFetchingArtworkInfoDictionaries] & 1) == 0 && !objc_msgSend(WeakRetained, "inFlightArtworkRequests"))
    {
      [WeakRetained _fetchArtworkInfoIfNecessary];
    }
  }
}

- (id)_getPurchaseHistoryIdsFromMediaEntities:(id)entities inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = location + length;
  if (location + length > [entitiesCopy count] - 1)
  {
    v8 = [entitiesCopy count] - 1;
  }

  while (location <= v8)
  {
    v9 = [entitiesCopy objectAtIndex:location];
    purchaseHistoryID = [v9 purchaseHistoryID];
    if (purchaseHistoryID)
    {
      [v7 addObject:purchaseHistoryID];
    }

    ++location;
  }

  v11 = [v7 copy];

  return v11;
}

- (_NSRange)requestedRange
{
  p_requestedRange = &self->_requestedRange;
  location = self->_requestedRange.location;
  length = p_requestedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end