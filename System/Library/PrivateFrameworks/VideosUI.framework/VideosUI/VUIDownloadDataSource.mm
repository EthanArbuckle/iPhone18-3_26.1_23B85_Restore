@interface VUIDownloadDataSource
- (BOOL)_doesEpisodeSet:(id)set containMediaEntity:(id)entity;
- (BOOL)_downloadsDidChange:(id)change;
- (VUIDownloadDataSource)initWithMediaLibrary:(id)library fetchRequest:(id)request;
- (VUIDownloadDataSourceDelegate)downloadDelegate;
- (id)_coalesceActiveDownloadEntitiesAndDownloadedEntities;
- (id)_createDownloadEntitiesFromLatestDownloads:(id)downloads;
- (id)_createGroupingByShowIdentifierWithLatestMediaEntityGroups:(id)groups;
- (id)_deDupedMediaEntities:(id)entities;
- (id)_getDownloadEntityInDownloadEntities:(id)entities containingMediaEntity:(id)entity;
- (id)_mediaEntitiesForAdamIDs:(id)ds;
- (id)_sortDownloadEntities:(id)entities;
- (id)_upsertDownloadEntities:(id)entities withEpisodesDownloadingForShow:(id)show;
- (void)_downloadedMediaEntitiesDidUpdate:(id)update grouping:(id)grouping;
- (void)_downloadingMediaEntitiesDidUpdate:(id)update;
- (void)_getActivelyDownloadingAdamIDsWithCompletion:(id)completion;
- (void)_handleDownloadingStateDidChange;
- (void)_handleMediaLibraryContentsDidChangeNotification:(id)notification;
- (void)_loadActiveDownloads;
- (void)_loadDownloadedEntities;
- (void)_notifyDelegatesDownloadsFetchCompletedWithChanges:(BOOL)changes;
- (void)_rentalsDidExpire:(id)expire;
- (void)_upsertEpisodesDownloadingForShowWithMediaEntity:(id)entity;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change;
- (void)downloadManagerDownloadsDidChange:(id)change;
- (void)loadDownloadData;
- (void)setDownloadEntities:(id)entities;
- (void)startFetch;
@end

@implementation VUIDownloadDataSource

- (VUIDownloadDataSource)initWithMediaLibrary:(id)library fetchRequest:(id)request
{
  v33[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  requestCopy = request;
  if (!libraryCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  }

  v31.receiver = self;
  v31.super_class = VUIDownloadDataSource;
  v9 = [(VUIMediaEntitiesDataSource *)&v31 initWithFetchRequest:requestCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibrary, library);
    v10->_hasFetchedAllDownloadEntities = 0;
    v10->_hasFetchedAllDownloadedEntities = 0;
    v11 = objc_opt_new();
    episodesDownloadingForShow = v10->_episodesDownloadingForShow;
    v10->_episodesDownloadingForShow = v11;

    v13 = +[VUIDownloadManager sharedInstance];
    [v13 addDelegate:v10];

    v14 = objc_alloc_init(MEMORY[0x1E69D48D8]);
    v15 = *MEMORY[0x1E69D4B00];
    v33[0] = *MEMORY[0x1E69D4AE0];
    v33[1] = v15;
    v30 = libraryCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    [v14 setDownloadKinds:v16];

    [v14 setShouldFilterExternalOriginatedDownloads:0];
    v17 = *MEMORY[0x1E69D4BF0];
    v32[0] = *MEMORY[0x1E69D4BD0];
    v32[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    [v14 setPrefetchedDownloadProperties:v18];

    v19 = [objc_alloc(MEMORY[0x1E69D48D0]) initWithManagerOptions:v14];
    [v19 addObserver:v10];
    sDownloadManager = v10->_sDownloadManager;
    v10->_sDownloadManager = v19;
    v29 = v19;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__rentalsDidExpire_ name:@"VUIRentalExpirationMonitorRentalDidExpireNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = +[VUIMediaLibraryManager defaultManager];
    deviceMediaLibrary = [v23 deviceMediaLibrary];
    [defaultCenter2 addObserver:v10 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:deviceMediaLibrary];

    libraryCopy = v30;
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v26 sidebandMediaLibrary];
    [defaultCenter3 addObserver:v10 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:sidebandMediaLibrary];

    [(VUIDownloadDataSource *)v10 _loadDownloadedEntities];
    [(VUIDownloadDataSource *)v10 _loadActiveDownloads];
  }

  return v10;
}

- (void)startFetch
{
  [(VUIDownloadDataSource *)self _loadDownloadedEntities];

  [(VUIDownloadDataSource *)self _loadActiveDownloads];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  libraryContentsChangeDebounceTimer = [(VUIDownloadDataSource *)self libraryContentsChangeDebounceTimer];
  [libraryContentsChangeDebounceTimer invalidate];

  sDownloadManager = [(VUIDownloadDataSource *)self sDownloadManager];
  [sDownloadManager removeObserver:self];

  v6 = +[VUIDownloadManager sharedInstance];
  [v6 removeDelegate:self];

  v7.receiver = self;
  v7.super_class = VUIDownloadDataSource;
  [(VUIDownloadDataSource *)&v7 dealloc];
}

- (void)loadDownloadData
{
  v3 = +[VUIDownloadManager sharedInstance];
  [v3 addDelegate:self];

  [(VUIDownloadDataSource *)self setHasFetchedAllDownloadEntities:0];
  [(VUIDownloadDataSource *)self setHasFetchedAllDownloadedEntities:0];
  v4 = objc_opt_new();
  [(VUIDownloadDataSource *)self setEpisodesDownloadingForShow:v4];

  [(VUIDownloadDataSource *)self _loadDownloadedEntities];

  [(VUIDownloadDataSource *)self _loadActiveDownloads];
}

- (void)setDownloadEntities:(id)entities
{
  v4 = [(VUIDownloadDataSource *)self _sortDownloadEntities:entities];
  if (self->_downloadEntities != v4)
  {
    v5 = v4;
    objc_storeStrong(&self->_downloadEntities, v4);
    v4 = v5;
  }
}

- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change
{
  managerCopy = manager;
  changeCopy = change;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __65__VUIDownloadDataSource_downloadManager_downloadStatesDidChange___block_invoke;
  v12 = &unk_1E872E4B8;
  objc_copyWeak(&v13, &location);
  v8 = &v9;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11(v8);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __65__VUIDownloadDataSource_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDownloadingStateDidChange];
}

- (void)downloadManagerDownloadsDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __59__VUIDownloadDataSource_downloadManagerDownloadsDidChange___block_invoke;
  v9 = &unk_1E872E4B8;
  objc_copyWeak(&v10, &location);
  v5 = &v6;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__VUIDownloadDataSource_downloadManagerDownloadsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDownloadingStateDidChange];
}

- (void)_downloadingMediaEntitiesDidUpdate:(id)update
{
  updateCopy = update;
  episodesDownloadingForShow = [(VUIDownloadDataSource *)self episodesDownloadingForShow];
  [episodesDownloadingForShow removeAllObjects];

  [(VUIDownloadDataSource *)self setHasFetchedAllDownloadEntities:1];
  v6 = [(VUIDownloadDataSource *)self _deDupedMediaEntities:updateCopy];

  [(VUIDownloadDataSource *)self setActivelyDownloadingMediaItems:v6];
  _coalesceActiveDownloadEntitiesAndDownloadedEntities = [(VUIDownloadDataSource *)self _coalesceActiveDownloadEntitiesAndDownloadedEntities];
  v7 = [(VUIDownloadDataSource *)self _downloadsDidChange:_coalesceActiveDownloadEntitiesAndDownloadedEntities];
  [(VUIDownloadDataSource *)self setDownloadEntities:_coalesceActiveDownloadEntitiesAndDownloadedEntities];
  [(VUIDownloadDataSource *)self _notifyDelegatesDownloadsFetchCompletedWithChanges:v7];
}

- (void)_downloadedMediaEntitiesDidUpdate:(id)update grouping:(id)grouping
{
  groupingCopy = grouping;
  updateCopy = update;
  [(VUIDownloadDataSource *)self setHasFetchedAllDownloadedEntities:1];
  v8 = [(VUIDownloadDataSource *)self _deDupedMediaEntities:updateCopy];

  [(VUIDownloadDataSource *)self setLocalMediaItems:v8];
  v9 = [(VUIDownloadDataSource *)self _createGroupingByShowIdentifierWithLatestMediaEntityGroups:groupingCopy];

  [(VUIDownloadDataSource *)self setGroupingByShowIdentifier:v9];
  _coalesceActiveDownloadEntitiesAndDownloadedEntities = [(VUIDownloadDataSource *)self _coalesceActiveDownloadEntitiesAndDownloadedEntities];
  v10 = [(VUIDownloadDataSource *)self _downloadsDidChange:_coalesceActiveDownloadEntitiesAndDownloadedEntities];
  [(VUIDownloadDataSource *)self setDownloadEntities:_coalesceActiveDownloadEntitiesAndDownloadedEntities];
  [(VUIDownloadDataSource *)self _notifyDelegatesDownloadsFetchCompletedWithChanges:v10];
}

- (id)_sortDownloadEntities:(id)entities
{
  v3 = MEMORY[0x1E696AB08];
  entitiesCopy = entities;
  punctuationCharacterSet = [v3 punctuationCharacterSet];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"TV.Library.Sorting.Prefix.Articles"];
  v8 = [v7 componentsSeparatedByString:@"|"];

  v9 = [v8 count];
  v10 = &unk_1F5E5EA00;
  if (v9)
  {
    v10 = v8;
  }

  v11 = MEMORY[0x1E695DF70];
  v12 = v10;
  array = [v11 array];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47__VUIDownloadDataSource__sortDownloadEntities___block_invoke;
  v26[3] = &unk_1E87334C0;
  v14 = array;
  v27 = v14;
  [v12 enumerateObjectsUsingBlock:v26];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__VUIDownloadDataSource__sortDownloadEntities___block_invoke_2;
  aBlock[3] = &unk_1E87334E8;
  v24 = punctuationCharacterSet;
  v25 = v14;
  v15 = v14;
  v16 = punctuationCharacterSet;
  v17 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47__VUIDownloadDataSource__sortDownloadEntities___block_invoke_3;
  v21[3] = &unk_1E8733510;
  v22 = v17;
  v18 = v17;
  v19 = [entitiesCopy sortedArrayUsingComparator:v21];

  return v19;
}

void __47__VUIDownloadDataSource__sortDownloadEntities___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", a2];
  [*(a1 + 32) addObject:v3];
}

id __47__VUIDownloadDataSource__sortDownloadEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a2 stringByTrimmingCharactersInSet:*(a1 + 32)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v3 rangeOfString:v9 options:{9, v14}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [v3 substringFromIndex:{objc_msgSend(v9, "length")}];

          v3 = v10;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v3 stringByTrimmingCharactersInSet:v11];

  return v12;
}

uint64_t __47__VUIDownloadDataSource__sortDownloadEntities___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 title];
  v7 = [v5 title];

  v8 = (*(*(a1 + 32) + 16))();
  v9 = (*(*(a1 + 32) + 16))();
  if ([v8 length])
  {
    v10 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v11 = [v10 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", 0)}];
  }

  else
  {
    v11 = 0;
  }

  if ([v8 length])
  {
    v12 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v13 = [v12 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", 0)}] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  if ([v9 length])
  {
    v14 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v15 = [v14 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", 0)}] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  if ([v9 length] && (objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "characterIsMember:", objc_msgSend(v9, "characterAtIndex:", 0)), v16, (v11 & v17 & 1) != 0))
  {
    v18 = -1;
  }

  else if ((v15 | v13))
  {
    v18 = [v8 compare:v9 options:129];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)_handleMediaLibraryContentsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  libraryContentsChangeDebounceTimer = [(VUIDownloadDataSource *)self libraryContentsChangeDebounceTimer];

  if (!libraryContentsChangeDebounceTimer)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E695DFF0];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __74__VUIDownloadDataSource__handleMediaLibraryContentsDidChangeNotification___block_invoke;
    v11 = &unk_1E87303B8;
    objc_copyWeak(&v12, &location);
    v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:&v8 block:1.0];
    [(VUIDownloadDataSource *)self setLibraryContentsChangeDebounceTimer:v7, v8, v9, v10, v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __74__VUIDownloadDataSource__handleMediaLibraryContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setLibraryContentsChangeDebounceTimer:0];
    [v2 _loadDownloadedEntities];
    [v2 _loadActiveDownloads];
    WeakRetained = v2;
  }
}

- (void)_loadDownloadedEntities
{
  v95 = *MEMORY[0x1E69E9840];
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v2 sidebandMediaLibrary];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5D800, &unk_1F5E5D818, 0}];
  v5 = [sidebandMediaLibrary videosWithDownloadStates:v4 entitlementTypes:0 sortDescriptors:0 useMainThreadContext:1];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v85;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v84 + 1) + 8 * i);
        if (([v11 markedAsDeleted] & 1) == 0)
        {
          entitlementType = [v11 entitlementType];
          integerValue = [entitlementType integerValue];

          if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            adamID = [v11 adamID];
            if ([(VUISidebandMediaItem *)adamID length])
            {
              v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[VUISidebandMediaItem longLongValue](adamID, "longLongValue")}];
              if (v15)
              {
                [v68 addObject:v15];
              }
            }
          }

          else
          {
            v16 = [VUISidebandMediaItem alloc];
            v17 = +[VUIMediaLibraryManager defaultManager];
            sidebandMediaLibrary2 = [v17 sidebandMediaLibrary];
            v19 = VUIMediaEntityFetchRequestAllPropertiesSet();
            adamID = [(VUISidebandMediaItem *)v16 initWithMediaLibrary:sidebandMediaLibrary2 videoManagedObject:v11 requestedProperties:v19];

            if (adamID)
            {
              [v75 addObject:adamID];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v8);
  }

  v60 = v6;

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v20 = MEMORY[0x1E6970618];
  defaultMediaLibrary = [MEMORY[0x1E69705E8] defaultMediaLibrary];
  v22 = [v20 vui_moviesQueryWithMediaLibrary:defaultMediaLibrary];
  v92[0] = v22;
  v23 = MEMORY[0x1E6970618];
  defaultMediaLibrary2 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
  v25 = [v23 vui_movieRentalsQueryWithMediaLibrary:defaultMediaLibrary2];
  v92[1] = v25;
  v26 = MEMORY[0x1E6970618];
  defaultMediaLibrary3 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
  v28 = [v26 vui_episodesQueryWithMediaLibrary:defaultMediaLibrary3];
  v92[2] = v28;
  v29 = MEMORY[0x1E6970618];
  defaultMediaLibrary4 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
  v31 = [v29 vui_homeVideosQueryWithMediaLibrary:defaultMediaLibrary4];
  v92[3] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:4];

  obj = v32;
  v67 = [v32 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v67)
  {
    v65 = *MEMORY[0x1E696FA38];
    v66 = *v81;
    v63 = *MEMORY[0x1E696FB60];
    v64 = *MEMORY[0x1E696FA68];
    do
    {
      v33 = 0;
      do
      {
        if (*v81 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v74 = v33;
        v34 = *(*(&v80 + 1) + 8 * v33);
        v35 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E118] forProperty:v65];
        v36 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:v64];
        v37 = MEMORY[0x1E6970598];
        v72 = v36;
        v73 = v35;
        v91[0] = v35;
        v91[1] = v36;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
        v39 = [v37 predicateMatchingPredicates:v38];

        v40 = MEMORY[0x1E69705A8];
        v41 = [MEMORY[0x1E695DFD8] setWithArray:v68];
        v42 = [v40 predicateWithProperty:v63 values:v41];

        v43 = MEMORY[0x1E69705A0];
        v70 = v42;
        v71 = v39;
        v90[0] = v39;
        v90[1] = v42;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
        v45 = [v43 predicateMatchingPredicates:v44];

        v69 = v45;
        [v34 addFilterPredicate:v45];
        [v34 setIgnoreSystemFilterPredicates:1];
        items = [v34 items];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v47 = [items countByEnumeratingWithState:&v76 objects:v89 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v77;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v77 != v49)
              {
                objc_enumerationMutation(items);
              }

              v51 = *(*(&v76 + 1) + 8 * j);
              v52 = [VUIMPMediaItem alloc];
              v53 = +[VUIMediaLibraryManager defaultManager];
              deviceMediaLibrary = [v53 deviceMediaLibrary];
              v55 = VUIMediaEntityFetchRequestAllPropertiesSet();
              v56 = [(VUIMPMediaItem *)v52 initWithMediaLibrary:deviceMediaLibrary mediaItem:v51 requestedProperties:v55];

              if (v56)
              {
                [v75 addObject:v56];
              }
            }

            v48 = [items countByEnumeratingWithState:&v76 objects:v89 count:16];
          }

          while (v48);
        }

        v33 = v74 + 1;
      }

      while (v74 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v67);
  }

  v57 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
  v88 = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  [v75 sortUsingDescriptors:v58];

  v59 = [VUIMediaLibraryUtilities groupingForMediaEntities:v75 groupingKeyPath:@"showTitle" groupingSortComparator:0 performDefaultSort:1 sortIndexPropertyKey:0];
  [(VUIDownloadDataSource *)self _downloadedMediaEntitiesDidUpdate:v75 grouping:v59];
}

- (void)_loadActiveDownloads
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__VUIDownloadDataSource__loadActiveDownloads__block_invoke;
  v3[3] = &unk_1E8733538;
  objc_copyWeak(&v4, &location);
  [(VUIDownloadDataSource *)self _getActivelyDownloadingAdamIDsWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __45__VUIDownloadDataSource__loadActiveDownloads__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = v3;
  [WeakRetained setActivelyDownloadingAdamIds:v6];
  v5 = [WeakRetained _mediaEntitiesForAdamIDs:v6];

  [WeakRetained _downloadingMediaEntitiesDidUpdate:v5];
}

- (id)_mediaEntitiesForAdamIDs:(id)ds
{
  v56 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([dsCopy count])
  {
    v43 = dsCopy;
    v4 = [dsCopy valueForKeyPath:@"stringValue"];
    v5 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v5 sidebandMediaLibrary];
    v42 = v4;
    v7 = [sidebandMediaLibrary videosForAdamIDs:v4 useMainThreadContext:1];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v51;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          entitlementType = [v12 entitlementType];
          integerValue = [entitlementType integerValue];

          if (integerValue <= 4 && ((1 << integerValue) & 0x13) != 0)
          {
            v16 = [VUISidebandMediaItem alloc];
            v17 = +[VUIMediaLibraryManager defaultManager];
            sidebandMediaLibrary2 = [v17 sidebandMediaLibrary];
            v19 = VUIMediaEntityFetchRequestAllPropertiesSet();
            v20 = [(VUISidebandMediaItem *)v16 initWithMediaLibrary:sidebandMediaLibrary2 videoManagedObject:v12 requestedProperties:v19];

            if (v20)
            {
              [v45 addObject:v20];
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v9);
    }

    v21 = MEMORY[0x1E69705A8];
    v22 = *MEMORY[0x1E696FB60];
    v23 = [MEMORY[0x1E695DFD8] setWithArray:v43];
    v24 = [v21 predicateWithProperty:v22 values:v23];

    v25 = objc_alloc(MEMORY[0x1E6970618]);
    v41 = v24;
    v26 = [MEMORY[0x1E695DFD8] setWithObject:v24];
    v27 = [v25 initWithFilterPredicates:v26];

    [v27 setIgnoreSystemFilterPredicates:1];
    v40 = v27;
    items = [v27 items];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = [items countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v47;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(items);
          }

          v33 = *(*(&v46 + 1) + 8 * j);
          v34 = [VUIMPMediaItem alloc];
          v35 = +[VUIMediaLibraryManager defaultManager];
          deviceMediaLibrary = [v35 deviceMediaLibrary];
          v37 = VUIMediaEntityFetchRequestAllPropertiesSet();
          v38 = [(VUIMPMediaItem *)v34 initWithMediaLibrary:deviceMediaLibrary mediaItem:v33 requestedProperties:v37];

          if (v38)
          {
            [v45 addObject:v38];
          }
        }

        v30 = [items countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v30);
    }

    dsCopy = v43;
  }

  return v45;
}

- (void)_rentalsDidExpire:(id)expire
{
  expireCopy = expire;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __43__VUIDownloadDataSource__rentalsDidExpire___block_invoke;
  v9 = &unk_1E872E4B8;
  objc_copyWeak(&v10, &location);
  v5 = &v6;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__VUIDownloadDataSource__rentalsDidExpire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPerformingRentalExpirationFetch:1];
  [WeakRetained _loadDownloadedEntities];
  [WeakRetained _loadActiveDownloads];
}

- (void)_getActivelyDownloadingAdamIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __70__VUIDownloadDataSource__getActivelyDownloadingAdamIDsWithCompletion___block_invoke;
  v9 = &unk_1E872E828;
  objc_copyWeak(&v11, &location);
  v5 = completionCopy;
  v10 = v5;
  v6 = v7;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__VUIDownloadDataSource__getActivelyDownloadingAdamIDsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[VUIDownloadManager sharedInstance];
  v4 = [v3 downloads];

  v5 = [WeakRetained sDownloadManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__VUIDownloadDataSource__getActivelyDownloadingAdamIDsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E8733560;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  [v5 getDownloadsUsingBlock:v7];
}

void __70__VUIDownloadDataSource__getActivelyDownloadingAdamIDsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v8 = *MEMORY[0x1E69D4BD0];
    v9 = *MEMORY[0x1E69D4BF0];
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v42[0] = v8;
        v42[1] = v9;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
        v13 = [v11 vui_valuesForProperties:v12];

        v14 = [v13 objectForKey:v9];
        [v3 addObject:v14];

        ++v10;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v6);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = *(a1 + 32);
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    v19 = *MEMORY[0x1E69D5DA8];
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = [*(*(&v33 + 1) + 8 * v20) mediaItem];
        v22 = [v21 mediaItemMetadataForProperty:v19];

        if (v22)
        {
          v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "longLongValue")}];
          [v3 addObject:v23];
        }

        ++v20;
      }

      while (v17 != v20);
      v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v29 = __70__VUIDownloadDataSource__getActivelyDownloadingAdamIDsWithCompletion___block_invoke_3;
  v30 = &unk_1E872DC10;
  v24 = *(a1 + 40);
  v31 = v3;
  v32 = v24;
  v25 = MEMORY[0x1E696AF00];
  v26 = v3;
  if ([v25 isMainThread])
  {
    v29(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__VUIDownloadDataSource__getActivelyDownloadingAdamIDsWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)_handleDownloadingStateDidChange
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__VUIDownloadDataSource__handleDownloadingStateDidChange__block_invoke;
  v3[3] = &unk_1E8733538;
  objc_copyWeak(&v4, &location);
  [(VUIDownloadDataSource *)self _getActivelyDownloadingAdamIDsWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __57__VUIDownloadDataSource__handleDownloadingStateDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = v3;
  v5 = [WeakRetained activelyDownloadingAdamIds];
  v6 = objc_alloc_init(MEMORY[0x1E69DF6B0]);
  v7 = [v6 changeSetFromObjects:v5 toObjects:v9 identifierBlock:&__block_literal_global_97 isEqualBlock:0];
  [WeakRetained setActivelyDownloadingAdamIds:v9];
  if ([v7 hasChanges])
  {
    v8 = [WeakRetained _mediaEntitiesForAdamIDs:v9];
    [WeakRetained _downloadingMediaEntitiesDidUpdate:v8];
    [WeakRetained _loadDownloadedEntities];
  }
}

- (id)_getDownloadEntityInDownloadEntities:(id)entities containingMediaEntity:(id)entity
{
  v27 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  entityCopy = entity;
  showIdentifier = [entityCopy showIdentifier];
  identifier = [entityCopy identifier];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = entitiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v21 = entityCopy;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        mediaEntities = [v13 mediaEntities];
        firstObject = [mediaEntities firstObject];

        if (showIdentifier)
        {
          showIdentifier2 = [firstObject showIdentifier];
          v17 = [showIdentifier2 isEqual:showIdentifier];

          if (v17)
          {
            goto LABEL_13;
          }
        }

        else
        {
          identifier2 = [firstObject identifier];
          v19 = [identifier2 isEqual:identifier];

          if (v19)
          {
LABEL_13:
            v10 = v13;

            goto LABEL_14;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_14:
    entityCopy = v21;
  }

  return v10;
}

- (void)_upsertEpisodesDownloadingForShowWithMediaEntity:(id)entity
{
  entityCopy = entity;
  showIdentifier = [entityCopy showIdentifier];
  if (showIdentifier)
  {
    episodesDownloadingForShow = [(VUIDownloadDataSource *)self episodesDownloadingForShow];
    v7 = [episodesDownloadingForShow objectForKey:showIdentifier];

    if (v7)
    {
      episodesDownloadingForShow2 = [(VUIDownloadDataSource *)self episodesDownloadingForShow];
      v9 = [episodesDownloadingForShow2 objectForKey:showIdentifier];

      if (![(VUIDownloadDataSource *)self _doesEpisodeSet:v9 containMediaEntity:entityCopy])
      {
        [v9 addObject:entityCopy];
      }
    }

    else
    {
      v9 = [MEMORY[0x1E695DFA8] setWithObject:entityCopy];
      episodesDownloadingForShow3 = [(VUIDownloadDataSource *)self episodesDownloadingForShow];
      [episodesDownloadingForShow3 setObject:v9 forKey:showIdentifier];
    }
  }

  else
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VUIDownloadDataSource *)entityCopy _upsertEpisodesDownloadingForShowWithMediaEntity:v10];
    }
  }
}

- (id)_upsertDownloadEntities:(id)entities withEpisodesDownloadingForShow:(id)show
{
  v57 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  showCopy = show;
  allKeys = [showCopy allKeys];
  v31 = [entitiesCopy mutableCopy];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = allKeys;
  v30 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v30)
  {
    v28 = *v51;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v50 + 1) + 8 * i);
        v44 = 0;
        v45 = &v44;
        v46 = 0x3032000000;
        v47 = __Block_byref_object_copy__17;
        v48 = __Block_byref_object_dispose__17;
        v49 = 0;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __80__VUIDownloadDataSource__upsertDownloadEntities_withEpisodesDownloadingForShow___block_invoke;
        v43[3] = &unk_1E87335A8;
        v43[4] = v6;
        v43[5] = &v44;
        [v31 enumerateObjectsUsingBlock:{v43, entitiesCopy}];
        if (v45[5])
        {
          v7 = [showCopy objectForKey:v6];
          v8 = MEMORY[0x1E695DF70];
          mediaEntities = [v45[5] mediaEntities];
          v33 = [v8 arrayWithArray:mediaEntities];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v34 = v7;
          v10 = [v34 countByEnumeratingWithState:&v39 objects:v55 count:16];
          if (v10)
          {
            v11 = *v40;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v40 != v11)
                {
                  objc_enumerationMutation(v34);
                }

                v13 = *(*(&v39 + 1) + 8 * j);
                identifier = [v13 identifier];
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                mediaEntities2 = [v45[5] mediaEntities];
                v16 = [mediaEntities2 countByEnumeratingWithState:&v35 objects:v54 count:16];
                if (v16)
                {
                  v17 = *v36;
                  while (2)
                  {
                    for (k = 0; k != v16; ++k)
                    {
                      if (*v36 != v17)
                      {
                        objc_enumerationMutation(mediaEntities2);
                      }

                      identifier2 = [*(*(&v35 + 1) + 8 * k) identifier];
                      if (identifier2 && ([identifier isEqual:identifier2] & 1) != 0)
                      {

                        goto LABEL_23;
                      }
                    }

                    v16 = [mediaEntities2 countByEnumeratingWithState:&v35 objects:v54 count:16];
                    if (v16)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v33 addObject:v13];
LABEL_23:
              }

              v10 = [v34 countByEnumeratingWithState:&v39 objects:v55 count:16];
            }

            while (v10);
          }

          [v45[5] setDownloadType:2];
          v20 = v45[5];
          v21 = [v33 copy];
          [v20 setMediaEntities:v21];
        }

        else
        {
          v22 = [showCopy objectForKey:v6];
          v23 = MEMORY[0x1E695DEC8];
          v34 = v22;
          allObjects = [v22 allObjects];
          v33 = [v23 arrayWithArray:allObjects];

          v21 = [[VUIDownloadEntity alloc] initWithMediaEntities:v33 withDownloadType:2];
          [v31 addObject:v21];
        }

        _Block_object_dispose(&v44, 8);
      }

      v30 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v30);
  }

  return v31;
}

void __80__VUIDownloadDataSource__upsertDownloadEntities_withEpisodesDownloadingForShow___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v12 = v7;
  v9 = [v7 mediaEntities];
  v10 = [v9 firstObject];
  v11 = [v10 showIdentifier];
  LODWORD(v8) = [v8 isEqual:v11];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_createGroupingByShowIdentifierWithLatestMediaEntityGroups:(id)groups
{
  v22 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = groupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier description];
        v13 = [v12 length];

        if (v13)
        {
          mediaEntities = [v10 mediaEntities];
          identifier2 = [v10 identifier];
          [v4 setObject:mediaEntities forKey:identifier2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_createDownloadEntitiesFromLatestDownloads:(id)downloads
{
  v82 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  v54 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  selfCopy = self;
  groupingByShowIdentifier = [(VUIDownloadDataSource *)self groupingByShowIdentifier];
  v52 = [v5 initWithDictionary:groupingByShowIdentifier];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = downloadsCopy;
  v56 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v56)
  {
    v55 = *v75;
    v7 = 0x1E8728000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v75 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v8;
        v9 = *(*(&v74 + 1) + 8 * v8);
        showTitle = [v9 showTitle];
        type = [v9 type];
        episode = [*(v7 + 1048) episode];
        v13 = episode;
        if (type == episode)
        {
          v24 = [v52 objectForKey:showTitle];

          if (v24)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            downloadEntities = [(VUIDownloadDataSource *)selfCopy downloadEntities];
            v60 = [downloadEntities countByEnumeratingWithState:&v70 objects:v80 count:16];
            if (v60)
            {
              v50 = showTitle;
              v61 = 0;
              v58 = downloadEntities;
              v59 = *v71;
              do
              {
                for (i = 0; i != v60; ++i)
                {
                  if (*v71 != v59)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v27 = *(*(&v70 + 1) + 8 * i);
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  mediaEntities = [v27 mediaEntities];
                  v29 = [mediaEntities countByEnumeratingWithState:&v66 objects:v79 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v67;
                    while (2)
                    {
                      for (j = 0; j != v30; ++j)
                      {
                        if (*v67 != v31)
                        {
                          objc_enumerationMutation(mediaEntities);
                        }

                        identifier = [*(*(&v66 + 1) + 8 * j) identifier];
                        identifier2 = [v9 identifier];
                        v35 = [identifier isEqual:identifier2];

                        if (v35)
                        {
                          v36 = v27;

                          v61 = v36;
                          goto LABEL_29;
                        }
                      }

                      v30 = [mediaEntities countByEnumeratingWithState:&v66 objects:v79 count:16];
                      if (v30)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_29:
                }

                v60 = [v58 countByEnumeratingWithState:&v70 objects:v80 count:16];
              }

              while (v60);

              v37 = v52;
              v7 = 0x1E8728000;
              showTitle = v50;
              v38 = v61;
              if (!v61)
              {
LABEL_48:
                v48 = [v37 objectForKey:showTitle];
                v38 = [[VUIDownloadEntity alloc] initWithMediaEntities:v48 withDownloadType:1];
              }

              [v54 addObject:v38];
              [v37 removeObjectForKey:showTitle];
              goto LABEL_50;
            }

            v37 = v52;
            goto LABEL_48;
          }
        }

        else
        {
        }

        type2 = [v9 type];
        movie = [*(v7 + 1048) movie];
        if (type2 == movie)
        {
          goto LABEL_34;
        }

        v16 = showTitle;
        type3 = [v9 type];
        movieRental = [*(v7 + 1048) movieRental];
        v19 = movieRental;
        if (type3 == movieRental)
        {

LABEL_34:
LABEL_35:
          v39 = showTitle;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          downloadEntities2 = [(VUIDownloadDataSource *)selfCopy downloadEntities];
          v41 = [downloadEntities2 countByEnumeratingWithState:&v62 objects:v78 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v63;
LABEL_37:
            v44 = 0;
            while (1)
            {
              if (*v63 != v43)
              {
                objc_enumerationMutation(downloadEntities2);
              }

              v45 = *(*(&v62 + 1) + 8 * v44);
              mediaEntities2 = [v45 mediaEntities];
              firstObject = [mediaEntities2 firstObject];

              if (firstObject == v9)
              {
                break;
              }

              if (v42 == ++v44)
              {
                v42 = [downloadEntities2 countByEnumeratingWithState:&v62 objects:v78 count:16];
                if (v42)
                {
                  goto LABEL_37;
                }

                goto LABEL_43;
              }
            }

            v38 = v45;

            if (v38)
            {
              goto LABEL_46;
            }
          }

          else
          {
LABEL_43:
          }

          v38 = [[VUIDownloadEntity alloc] initWithMediaEntity:v9 withDownloadType:0];
LABEL_46:
          [v54 addObject:v38];
          v7 = 0x1E8728000;
          showTitle = v39;
LABEL_50:

          goto LABEL_51;
        }

        v20 = v7;
        type4 = [v9 type];
        homeVideo = [*(v7 + 1048) homeVideo];

        v23 = type4 == homeVideo;
        v7 = v20;
        showTitle = v16;
        if (v23)
        {
          goto LABEL_35;
        }

LABEL_51:

        v8 = v57 + 1;
      }

      while (v57 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v56);
  }

  return v54;
}

- (void)_notifyDelegatesDownloadsFetchCompletedWithChanges:(BOOL)changes
{
  changesCopy = changes;
  downloadEntities = [(VUIDownloadDataSource *)self downloadEntities];
  v6 = [downloadEntities copy];

  performingRentalExpirationFetch = [(VUIDownloadDataSource *)self performingRentalExpirationFetch];
  hasFetchedAllDownloadEntities = [(VUIDownloadDataSource *)self hasFetchedAllDownloadEntities];
  hasFetchedAllDownloadedEntities = [(VUIDownloadDataSource *)self hasFetchedAllDownloadedEntities];
  if (![(VUILibraryDataSource *)self hasCompletedInitialFetch]&& hasFetchedAllDownloadEntities && hasFetchedAllDownloadedEntities && !performingRentalExpirationFetch)
  {
    [(VUILibraryDataSource *)self setHasCompletedInitialFetch:1];
    objc_initWeak(&location, self);
    v10 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v20 = __76__VUIDownloadDataSource__notifyDelegatesDownloadsFetchCompletedWithChanges___block_invoke;
    v21 = &unk_1E872F038;
    objc_copyWeak(&v23, &location);
    v22 = v6;
    v11 = v19;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v20(v11);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v11);
    }

    v13 = v22;
LABEL_17:

    objc_destroyWeak(v10 + 5);
    objc_destroyWeak(&location);
    goto LABEL_18;
  }

  if ([(VUILibraryDataSource *)self hasCompletedInitialFetch]&& (changesCopy || performingRentalExpirationFetch))
  {
    if (performingRentalExpirationFetch)
    {
      [(VUIDownloadDataSource *)self setPerformingRentalExpirationFetch:0];
    }

    objc_initWeak(&location, self);
    v10 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = __76__VUIDownloadDataSource__notifyDelegatesDownloadsFetchCompletedWithChanges___block_invoke_2;
    v16 = &unk_1E872F038;
    objc_copyWeak(&v18, &location);
    v17 = v6;
    v12 = v14;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v15(v12);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }

    v13 = v17;
    goto LABEL_17;
  }

LABEL_18:
}

void __76__VUIDownloadDataSource__notifyDelegatesDownloadsFetchCompletedWithChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained downloadDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 downloadManager:WeakRetained downloadedFetchDidFinishWithEntities:*(a1 + 32)];
  }
}

void __76__VUIDownloadDataSource__notifyDelegatesDownloadsFetchCompletedWithChanges___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained downloadDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 downloadManager:WeakRetained downloadsDidChange:*(a1 + 32)];
  }
}

- (BOOL)_doesEpisodeSet:(id)set containMediaEntity:(id)entity
{
  v18 = *MEMORY[0x1E69E9840];
  setCopy = set;
  identifier = [entity identifier];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = setCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        identifier2 = [*(*(&v13 + 1) + 8 * i) identifier];
        if (identifier2 && [identifier isEqual:identifier2])
        {

          LOBYTE(v8) = 1;
          goto LABEL_12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

- (id)_coalesceActiveDownloadEntitiesAndDownloadedEntities
{
  v27 = *MEMORY[0x1E69E9840];
  localMediaItems = [(VUIDownloadDataSource *)self localMediaItems];
  v4 = [(VUIDownloadDataSource *)self _createDownloadEntitiesFromLatestDownloads:localMediaItems];

  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  activelyDownloadingMediaItems = [(VUIDownloadDataSource *)self activelyDownloadingMediaItems];
  v6 = [activelyDownloadingMediaItems countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(activelyDownloadingMediaItems);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        type = [v10 type];
        v12 = +[VUIMediaEntityType episode];

        if (type == v12)
        {
          [(VUIDownloadDataSource *)self _upsertEpisodesDownloadingForShowWithMediaEntity:v10];
        }

        else
        {
          v13 = [(VUIDownloadDataSource *)self _getDownloadEntityInDownloadEntities:v4 containingMediaEntity:v10];
          if (!v13)
          {
            v13 = [[VUIDownloadEntity alloc] initWithMediaEntity:v10 withDownloadType:0];
            [v20 addObject:v13];
          }
        }
      }

      v7 = [activelyDownloadingMediaItems countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  episodesDownloadingForShow = [(VUIDownloadDataSource *)self episodesDownloadingForShow];
  v15 = [(VUIDownloadDataSource *)self _upsertDownloadEntities:v4 withEpisodesDownloadingForShow:episodesDownloadingForShow];

  [v15 addObjectsFromArray:v20];
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
  v25 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v15 sortUsingDescriptors:v17];

  v18 = [v15 copy];

  return v18;
}

- (BOOL)_downloadsDidChange:(id)change
{
  changeCopy = change;
  downloadEntities = [(VUIDownloadDataSource *)self downloadEntities];
  if (downloadEntities == changeCopy)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    downloadEntities2 = [(VUIDownloadDataSource *)self downloadEntities];
    v7 = [downloadEntities2 isEqualToArray:changeCopy] ^ 1;
  }

  return v7;
}

- (id)_deDupedMediaEntities:(id)entities
{
  v31 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = entitiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isFamilySharingContent])
        {
          storeID = [v11 storeID];
          if (storeID)
          {
            [v5 addObject:storeID];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v18 isFamilySharingContent])
          {
            [v4 addObject:v18];
          }

          else
          {
            storeID2 = [v18 storeID];
            if (!storeID2 || ([v5 containsObject:storeID2] & 1) == 0)
            {
              [v4 addObject:v18];
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  return v4;
}

- (VUIDownloadDataSourceDelegate)downloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadDelegate);

  return WeakRetained;
}

- (void)_upsertEpisodesDownloadingForShowWithMediaEntity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "DownloadDataSource:: upsertEpisodes currentIdentifier is nil for mediaEntity %@", &v2, 0xCu);
}

@end