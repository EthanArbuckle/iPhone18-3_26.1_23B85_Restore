@interface VUIMPMediaEntitiesDataSource
- (VUIMPMediaEntitiesDataSource)initWithMediaLibrary:(id)a3 fetchRequest:(id)a4;
- (_NSRange)requestedRange;
- (id)_getPurchaseHistoryIdsFromMediaEntities:(id)a3 inRange:(_NSRange)a4;
- (void)_fetchArtworkInfoIfNecessary;
- (void)_loadImageUrlsByPurchaseHistoryIds:(id)a3;
- (void)_notifyDelegateFetchDidComplete;
- (void)controller:(id)a3 fetchRequests:(id)a4 didCompleteWithResult:(id)a5;
- (void)controller:(id)a3 fetchRequests:(id)a4 didFailWithError:(id)a5;
- (void)dealloc;
- (void)setShouldPauseAutoFetchingArtworkInfoDictionaries:(BOOL)a3;
- (void)startFetch;
@end

@implementation VUIMPMediaEntitiesDataSource

- (VUIMPMediaEntitiesDataSource)initWithMediaLibrary:(id)a3 fetchRequest:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VUIMPMediaEntitiesDataSource;
  v8 = [(VUIMediaEntitiesDataSource *)&v11 initWithFetchRequest:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, a3);
    v9->_requestedRange = xmmword_1E4296B90;
    v9->_inFlightArtworkRequests = 0;
  }

  return v9;
}

- (void)startFetch
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [VUIMediaEntitiesFetchController alloc];
  v4 = [(VUIMPMediaEntitiesDataSource *)self mediaLibrary];
  v5 = [(VUIMediaEntitiesDataSource *)self fetchRequest];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [(VUIMediaEntitiesFetchController *)v3 initWithMediaLibrary:v4 fetchRequests:v6];
  [(VUIMPMediaEntitiesDataSource *)self setFetchController:v7];

  v8 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
  [v8 setDelegate:self];

  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:0];
  v9 = [(VUIMPMediaEntitiesDataSource *)self mediaLibrary];
  v10 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v9];
  v11 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
  [v10 addFetchController:v11];
}

- (void)setShouldPauseAutoFetchingArtworkInfoDictionaries:(BOOL)a3
{
  shouldPauseAutoFetchingArtworkInfoDictionaries = self->_shouldPauseAutoFetchingArtworkInfoDictionaries;
  self->_shouldPauseAutoFetchingArtworkInfoDictionaries = a3;
  if (shouldPauseAutoFetchingArtworkInfoDictionaries && !a3 && !self->_inFlightArtworkRequests)
  {
    [(VUIMPMediaEntitiesDataSource *)self _fetchArtworkInfoIfNecessary];
  }
}

- (void)dealloc
{
  v3 = [(VUIMPMediaEntitiesDataSource *)self fetchController];

  if (v3)
  {
    v4 = [(VUIMPMediaEntitiesDataSource *)self mediaLibrary];
    v5 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v4];
    v6 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
    [v5 removeFetchController:v6];

    v7 = [(VUIMPMediaEntitiesDataSource *)self fetchController];
    [v7 setDelegate:0];
  }

  v8.receiver = self;
  v8.super_class = VUIMPMediaEntitiesDataSource;
  [(VUIMPMediaEntitiesDataSource *)&v8 dealloc];
}

- (void)controller:(id)a3 fetchRequests:(id)a4 didCompleteWithResult:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = self;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "[VUIMPMediaEntitiesDataSource %p] - Fetch completed successfully", buf, 0xCu);
  }

  v8 = [v6 fetchResponses];

  if (v8)
  {
    v9 = [v8 firstObject];
    v10 = [v9 mediaEntities];

    v11 = [v8 firstObject];
    v12 = [v11 grouping];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
    v10 = MEMORY[0x1E695E0F0];
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__VUIMPMediaEntitiesDataSource_controller_fetchRequests_didCompleteWithResult___block_invoke;
  v20[3] = &unk_1E872EDB8;
  v14 = v13;
  v21 = v14;
  [v10 enumerateObjectsUsingBlock:v20];
  v15 = [v14 array];
  if ([(VUIMediaEntitiesDataSource *)self shouldAutoFetchArtworkInfoDictionaries])
  {
    v16 = [(VUIMPMediaEntitiesDataSource *)self mediaEntitiesSet];

    if (v16)
    {
      v17 = [v14 mutableCopy];
      v18 = [(VUIMPMediaEntitiesDataSource *)self mediaEntitiesSet];
      [v17 minusOrderedSet:v18];

      v19 = [v17 array];
    }

    else
    {
      v19 = v15;
    }
  }

  else
  {
    v19 = 0;
  }

  [(VUIMPMediaEntitiesDataSource *)self setMediaEntitiesSet:v14];
  [(VUIMediaEntitiesDataSource *)self setMediaEntities:v15];
  [(VUIMPMediaEntitiesDataSource *)self setMediaEntitiesToFetch:v19];
  [(VUIMPMediaEntitiesDataSource *)self setRequestedRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(VUIMediaEntitiesDataSource *)self setGrouping:v12];
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

- (void)controller:(id)a3 fetchRequests:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

- (void)_loadImageUrlsByPurchaseHistoryIds:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  [(VUIMPMediaEntitiesDataSource *)self setInFlightArtworkRequests:[(VUIMPMediaEntitiesDataSource *)self inFlightArtworkRequests]+ 1];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VUIMPMediaEntitiesDataSource *)self inFlightArtworkRequests];
    *buf = 134218240;
    v12 = self;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIMPMediaEntitiesDataSource %p] - Begining to fetch artwork by purchase history ids number of request %ld", buf, 0x16u);
  }

  v7 = +[VUICloudClient sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__VUIMPMediaEntitiesDataSource__loadImageUrlsByPurchaseHistoryIds___block_invoke;
  v8[3] = &unk_1E872EE08;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v7 loadArtworkURLsForPurchaseHistoryIDs:v4 completionHandler:v8];

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

- (id)_getPurchaseHistoryIdsFromMediaEntities:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = location + length;
  if (location + length > [v6 count] - 1)
  {
    v8 = [v6 count] - 1;
  }

  while (location <= v8)
  {
    v9 = [v6 objectAtIndex:location];
    v10 = [v9 purchaseHistoryID];
    if (v10)
    {
      [v7 addObject:v10];
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