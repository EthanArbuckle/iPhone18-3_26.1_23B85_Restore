@interface VUIMPMenuDataSource
- (BOOL)_addOrRemoveDownloadCategoryIfNeeded;
- (BOOL)_addOrRemoveFamilySharingCategoryIfNeeded;
- (VUIMPMenuDataSource)initWithValidCategories:(id)categories;
- (id)_categoryTypesWithMediaEntitiesMap:(id)map categoryTypeComparator:(id)comparator;
- (id)_categoryTypesWithOptimizedMenuDataMap:(id)map categoryTypeComparator:(id)comparator;
- (id)_constructCategoryList;
- (id)_deviceMediaLibrary;
- (id)_fetchRequestsWithMediaLibrary:(id)library categoryTypeMap:(id *)map isInitialFetch:(BOOL)fetch;
- (void)_accountsChanged:(id)changed;
- (void)_addAccountChangedNotificationObserver;
- (void)_addMediaLibraryNotificationObservers;
- (void)_addNotificationObserversWithDeviceLibrary:(id)library;
- (void)_addRentalsUpdateNotificationObserver;
- (void)_homeShareMediaLibrariesDidChange:(id)change;
- (void)_loadGenres;
- (void)_loadMediaEntityShelvesWithInitialFetch:(BOOL)fetch;
- (void)_mediaLibraryContentDidChange:(id)change;
- (void)_notifyDelegateFetchDidComplete;
- (void)_populateViewModelFromMeidaLibraryCategoryTypes:(id)types;
- (void)_removeAccountChangedNotificationObserver;
- (void)_removeMediaLibraryNotificationObservers;
- (void)_removeNotificationObserversWithDeviceLibrary:(id)library;
- (void)_removeRentalsUpdateNotificationObserver;
- (void)_updateFetchRequest:(id)request isInitialFetch:(BOOL)fetch;
- (void)_updateRentalShelf;
- (void)controller:(id)controller fetchRequests:(id)requests didCompleteWithResult:(id)result;
- (void)controller:(id)controller fetchRequests:(id)requests didFailWithError:(id)error;
- (void)dataSourceDidFinishFetching:(id)fetching;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadedFetchDidFinishWithEntities:(id)entities;
- (void)downloadManager:(id)manager downloadsDidChange:(id)change;
- (void)refetch;
- (void)setMediaLibrary:(id)library;
- (void)startFetch;
@end

@implementation VUIMPMenuDataSource

- (VUIMPMenuDataSource)initWithValidCategories:(id)categories
{
  v10.receiver = self;
  v10.super_class = VUIMPMenuDataSource;
  v3 = [(VUILibraryMenuDataSource *)&v10 initWithValidCategories:categories];
  v4 = v3;
  if (v3)
  {
    v3->_hasMediaEntitiesFetchCompleted = 0;
    [(VUIMPMenuDataSource *)v3 _addRentalsUpdateNotificationObserver];
    [(VUIMPMenuDataSource *)v4 _addAccountChangedNotificationObserver];
    v5 = +[VUIMediaLibraryManager defaultManager];
    aggregateMediaLibrary = [v5 aggregateMediaLibrary];
    v7 = [VUIMediaEntitiesDataSourceFactory dataSourceForCategoryType:8 withLibrary:aggregateMediaLibrary];
    [(VUIMPMenuDataSource *)v4 setDownloadDataSource:v7];

    downloadDataSource = [(VUIMPMenuDataSource *)v4 downloadDataSource];
    [downloadDataSource setDownloadDelegate:v4];

    [(VUIMPMenuDataSource *)v4 setHasDownloadDataSourceFetchCompleted:0];
  }

  return v4;
}

- (void)dealloc
{
  mediaEntitiesFetchController = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];

  if (mediaEntitiesFetchController)
  {
    mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
    v5 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:mediaLibrary];
    mediaEntitiesFetchController2 = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];
    [v5 removeFetchController:mediaEntitiesFetchController2];

    [(VUIMediaEntitiesFetchController *)self->_mediaEntitiesFetchController setDelegate:0];
  }

  rentalsUpdateFetchController = [(VUIMPMenuDataSource *)self rentalsUpdateFetchController];

  if (rentalsUpdateFetchController)
  {
    mediaLibrary2 = [(VUIMPMenuDataSource *)self mediaLibrary];
    v9 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:mediaLibrary2];
    rentalsUpdateFetchController2 = [(VUIMPMenuDataSource *)self rentalsUpdateFetchController];
    [v9 removeFetchController:rentalsUpdateFetchController2];

    [(VUIMediaEntitiesFetchController *)self->_rentalsUpdateFetchController setDelegate:0];
  }

  [(VUIMPMenuDataSource *)self _removeMediaLibraryNotificationObservers];
  [(VUIMPMenuDataSource *)self _removeRentalsUpdateNotificationObserver];
  [(VUIMPMenuDataSource *)self _removeAccountChangedNotificationObserver];
  downloadDataSource = [(VUIMPMenuDataSource *)self downloadDataSource];
  [downloadDataSource setDelegate:0];

  v12.receiver = self;
  v12.super_class = VUIMPMenuDataSource;
  [(VUIMPMenuDataSource *)&v12 dealloc];
}

- (void)setMediaLibrary:(id)library
{
  libraryCopy = library;
  objc_storeStrong(&self->_mediaLibrary, library);
  [(VUIMPMenuDataSource *)self _addMediaLibraryNotificationObservers];
  validCategories = [(VUILibraryMenuDataSource *)self validCategories];
  if ([validCategories containsObject:&unk_1F5E5D110])
  {
    mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
    type = [mediaLibrary type];

    if (!type)
    {
      v8 = +[VUIMediaLibraryManager defaultManager];
      homeShareMediaLibraries = [v8 homeShareMediaLibraries];
      [(VUIMPMenuDataSource *)self setHomeShares:homeShareMediaLibraries];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(VUIMPMenuDataSource *)self setHomeShares:MEMORY[0x1E695E0F0]];
LABEL_6:
}

- (void)startFetch
{
  if (![(VUILibraryDataSource *)self hasCompletedInitialFetch])
  {
    [(VUIMPMenuDataSource *)self _loadInitialMediaEntityShelves];
    downloadDataSource = [(VUIMPMenuDataSource *)self downloadDataSource];
    [downloadDataSource loadDownloadData];

    validCategories = [(VUILibraryMenuDataSource *)self validCategories];
    if ([validCategories containsObject:&unk_1F5E5D128])
    {
      v4 = +[VUIAuthenticationManager userHasActiveAccount];

      if (!v4)
      {
        return;
      }

      v5 = objc_alloc_init(VUILibraryFamilyMembersDataSource);
      [(VUIMPMenuDataSource *)self setFamilyDataSource:v5];

      familyDataSource = [(VUIMPMenuDataSource *)self familyDataSource];
      [familyDataSource setDelegate:self];

      validCategories = [(VUIMPMenuDataSource *)self familyDataSource];
      [validCategories startFetch];
    }
  }
}

- (void)refetch
{
  [(VUIMPMenuDataSource *)self setHasMediaEntitiesFetchCompleted:0];
  [(VUIMPMenuDataSource *)self _refetchMediaEntityShelves];
  downloadDataSource = [(VUIMPMenuDataSource *)self downloadDataSource];
  [downloadDataSource loadDownloadData];

  validCategories = [(VUILibraryMenuDataSource *)self validCategories];
  if ([validCategories containsObject:&unk_1F5E5D128])
  {
    v4 = +[VUIAuthenticationManager userHasActiveAccount];

    if (!v4)
    {
      return;
    }

    v5 = objc_alloc_init(VUILibraryFamilyMembersDataSource);
    [(VUIMPMenuDataSource *)self setFamilyDataSource:v5];

    familyDataSource = [(VUIMPMenuDataSource *)self familyDataSource];
    [familyDataSource setDelegate:self];

    validCategories = [(VUIMPMenuDataSource *)self familyDataSource];
    [validCategories startFetch];
  }
}

- (void)downloadManager:(id)manager downloadedFetchDidFinishWithEntities:(id)entities
{
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted:manager])
  {
    [(VUIMPMenuDataSource *)self _addOrRemoveDownloadCategoryIfNeeded];
    [(VUIMPMenuDataSource *)self setHasDownloadDataSourceFetchCompleted:1];
    if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
    {

      [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
    }
  }

  else
  {

    [(VUIMPMenuDataSource *)self setHasDownloadDataSourceFetchCompleted:1];
  }
}

- (void)downloadManager:(id)manager downloadsDidChange:(id)change
{
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted:manager])
  {
    [(VUIMPMenuDataSource *)self _addOrRemoveDownloadCategoryIfNeeded];
    [(VUIMPMenuDataSource *)self setHasDownloadDataSourceFetchCompleted:1];
    if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
    {

      [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
    }
  }

  else
  {

    [(VUIMPMenuDataSource *)self setHasDownloadDataSourceFetchCompleted:1];
  }
}

- (BOOL)_addOrRemoveDownloadCategoryIfNeeded
{
  if (!self->_hasMediaEntitiesFetchCompleted)
  {
    return 0;
  }

  downloadDataSource = [(VUIMPMenuDataSource *)self downloadDataSource];
  downloadEntities = [downloadDataSource downloadEntities];
  mediaEntitiesByCategoryType2 = [downloadEntities count];

  if (!mediaEntitiesByCategoryType2)
  {
    mediaEntitiesByCategoryType = [(VUIMPMenuDataSource *)self mediaEntitiesByCategoryType];
    _constructCategoryList = [mediaEntitiesByCategoryType objectForKey:&unk_1F5E5D140];
    if (_constructCategoryList)
    {
      mediaEntitiesByCategoryType2 = [(VUIMPMenuDataSource *)self mediaEntitiesByCategoryType];
      v2 = [mediaEntitiesByCategoryType2 objectForKey:&unk_1F5E5D140];
      if ([v2 count])
      {

        v9 = 0;
LABEL_15:

        return v9;
      }
    }

    categoryTypes = [(VUIMPMenuDataSource *)self categoryTypes];
    v16 = [categoryTypes containsObject:&unk_1F5E5D140];

    if (_constructCategoryList)
    {

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if (!v16)
      {
        return 0;
      }
    }

    v17 = MEMORY[0x1E695DF70];
    categoryTypes2 = [(VUIMPMenuDataSource *)self categoryTypes];
    mediaEntitiesByCategoryType = [v17 arrayWithArray:categoryTypes2];

    [mediaEntitiesByCategoryType removeObject:&unk_1F5E5D140];
LABEL_14:
    v19 = [mediaEntitiesByCategoryType copy];
    [(VUIMPMenuDataSource *)self setCategoryTypes:v19];

    _constructCategoryList = [(VUIMPMenuDataSource *)self _constructCategoryList];
    [(VUILibraryMenuDataSource *)self setMenuItems:_constructCategoryList];
    v9 = 1;
    goto LABEL_15;
  }

  categoryTypes3 = [(VUIMPMenuDataSource *)self categoryTypes];
  v8 = [categoryTypes3 containsObject:&unk_1F5E5D140];

  if ((v8 & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF70];
    categoryTypes4 = [(VUIMPMenuDataSource *)self categoryTypes];
    mediaEntitiesByCategoryType = [v12 arrayWithArray:categoryTypes4];

    [mediaEntitiesByCategoryType addObject:&unk_1F5E5D140];
    _categoryTypesSortComparator = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
    [mediaEntitiesByCategoryType sortUsingComparator:_categoryTypesSortComparator];

    goto LABEL_14;
  }

  return 0;
}

- (void)dataSourceDidFinishFetching:(id)fetching
{
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted])
  {
    [(VUIMPMenuDataSource *)self _addOrRemoveFamilySharingCategoryIfNeeded];
    if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
    {

      [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
    }
  }
}

- (BOOL)_addOrRemoveFamilySharingCategoryIfNeeded
{
  if (!self->_hasMediaEntitiesFetchCompleted)
  {
    return 0;
  }

  familyDataSource = [(VUIMPMenuDataSource *)self familyDataSource];
  familyMembers = [familyDataSource familyMembers];
  v5 = [familyMembers count];

  categoryTypes = [(VUIMPMenuDataSource *)self categoryTypes];
  v7 = [categoryTypes containsObject:&unk_1F5E5D128];

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF70];
      categoryTypes2 = [(VUIMPMenuDataSource *)self categoryTypes];
      v10 = [v8 arrayWithArray:categoryTypes2];

      [v10 addObject:&unk_1F5E5D128];
      _categoryTypesSortComparator = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
      [v10 sortUsingComparator:_categoryTypesSortComparator];

LABEL_8:
      v15 = [v10 copy];
      [(VUIMPMenuDataSource *)self setCategoryTypes:v15];

      _constructCategoryList = [(VUIMPMenuDataSource *)self _constructCategoryList];
      [(VUILibraryMenuDataSource *)self setMenuItems:_constructCategoryList];

      return 1;
    }
  }

  else if (v7)
  {
    v13 = MEMORY[0x1E695DF70];
    categoryTypes3 = [(VUIMPMenuDataSource *)self categoryTypes];
    v10 = [v13 arrayWithArray:categoryTypes3];

    [v10 removeObject:&unk_1F5E5D128];
    goto LABEL_8;
  }

  return 0;
}

- (void)controller:(id)controller fetchRequests:(id)requests didCompleteWithResult:(id)result
{
  v48 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  requestsCopy = requests;
  resultCopy = result;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fetchResponses = [resultCopy fetchResponses];
  v13 = fetchResponses;
  if (self->_rentalsUpdateFetchController == controllerCopy)
  {
    if (fetchResponses)
    {
      firstObject = [fetchResponses firstObject];
      mediaEntities = [firstObject mediaEntities];
    }

    else
    {
      mediaEntities = 0;
    }

    v32 = self->_mediaEntitiesByCategoryType;

    if ([mediaEntities count])
    {
      v33 = v32;
      v34 = mediaEntities;
    }

    else
    {
      v34 = MEMORY[0x1E695E0F0];
      v33 = v32;
    }

    [(NSDictionary *)v33 setObject:v34 forKey:&unk_1F5E5D158];

    goto LABEL_23;
  }

  if (self->_mediaEntitiesFetchController != controllerCopy)
  {
    goto LABEL_29;
  }

  if (![fetchResponses count])
  {
    v32 = v10;
LABEL_23:
    _categoryTypesSortComparator = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
    v29 = [(VUIMPMenuDataSource *)self _categoryTypesWithMediaEntitiesMap:v32 categoryTypeComparator:_categoryTypesSortComparator];
    v10 = v32;
    goto LABEL_24;
  }

  v41 = v10;
  v42 = v11;
  v38 = resultCopy;
  v39 = controllerCopy;
  v40 = 0;
  v14 = 0;
  do
  {
    v15 = [requestsCopy objectAtIndex:v14];
    options = [v15 options];
    v17 = [options vui_BOOLForKey:@"CheckHasItems" defaultValue:0];
    v18 = [v13 objectAtIndex:v14];
    categoryTypeByFetchRequestIdentifier = [(VUIMPMenuDataSource *)self categoryTypeByFetchRequestIdentifier];
    identifier = [v15 identifier];
    v21 = [categoryTypeByFetchRequestIdentifier objectForKey:identifier];

    if (v21)
    {
      mediaEntities2 = [v18 mediaEntities];
      v23 = mediaEntities2;
      if (v17)
      {
        hasDataForCheckHasItemsOption = [v18 hasDataForCheckHasItemsOption];
        v25 = [MEMORY[0x1E696AD98] numberWithBool:hasDataForCheckHasItemsOption];
        [v42 setObject:v25 forKey:v21];

        v40 = 1;
      }

      else
      {
        if (mediaEntities2)
        {
          v26 = v41;
          v27 = v23;
        }

        else
        {
          v26 = v41;
          v27 = MEMORY[0x1E695E0F0];
        }

        [(NSDictionary *)v26 setObject:v27 forKey:v21];
      }
    }

    ++v14;
  }

  while (v14 < [v13 count]);
  if ((v40 & 1) == 0)
  {
    v32 = v41;
    v11 = v42;
    resultCopy = v38;
    controllerCopy = v39;
    goto LABEL_23;
  }

  _categoryTypesSortComparator = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
  v11 = v42;
  v29 = [(VUIMPMenuDataSource *)self _categoryTypesWithOptimizedMenuDataMap:v42 categoryTypeComparator:_categoryTypesSortComparator];
  resultCopy = v38;
  controllerCopy = v39;
  v10 = v41;
LABEL_24:

  [(VUIMPMenuDataSource *)self _populateViewModelFromMeidaLibraryCategoryTypes:v29];
  [(VUIMPMenuDataSource *)self setMediaEntitiesByCategoryType:v10];
  [(VUIMPMenuDataSource *)self setHasMediaEntitiesFetchCompleted:1];
  v35 = VUIDefaultLogObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    hasDownloadDataSourceFetchCompleted = self->_hasDownloadDataSourceFetchCompleted;
    hasMediaEntitiesFetchCompleted = self->_hasMediaEntitiesFetchCompleted;
    *buf = 67109376;
    v45 = hasDownloadDataSourceFetchCompleted;
    v46 = 1024;
    v47 = hasMediaEntitiesFetchCompleted;
    _os_log_impl(&dword_1E323F000, v35, OS_LOG_TYPE_DEFAULT, "+++ VUIMPMenuDataSource should notify up _hasMediaEntitiesFetchCompleted %d, %d", buf, 0xEu);
  }

  if (self->_hasDownloadDataSourceFetchCompleted && [(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
  {
    [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
  }

LABEL_29:
}

- (void)controller:(id)controller fetchRequests:(id)requests didFailWithError:(id)error
{
  controllerCopy = controller;
  requestsCopy = requests;
  errorCopy = error;
  if (self->_mediaEntitiesFetchController == controllerCopy || self->_rentalsUpdateFetchController == controllerCopy)
  {
    [(VUIMPMenuDataSource *)self setHasMediaEntitiesFetchCompleted:1];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__VUIMPMenuDataSource_controller_fetchRequests_didFailWithError___block_invoke;
    v15 = &unk_1E872E4B8;
    objc_copyWeak(&v16, &location);
    v11 = &v12;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v14(v11);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v11);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __65__VUIMPMenuDataSource_controller_fetchRequests_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

- (id)_deviceMediaLibrary
{
  mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = mediaLibrary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_addMediaLibraryNotificationObservers
{
  _deviceMediaLibrary = [(VUIMPMenuDataSource *)self _deviceMediaLibrary];
  if (_deviceMediaLibrary)
  {
    v4 = _deviceMediaLibrary;
    [(VUIMPMenuDataSource *)self _addNotificationObserversWithDeviceLibrary:_deviceMediaLibrary];
    _deviceMediaLibrary = v4;
  }
}

- (void)_addNotificationObserversWithDeviceLibrary:(id)library
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__homeShareMediaLibrariesDidChange_ name:@"VUIMediaLibraryManagerHomeSharesDidChangeNotification" object:0];
  mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
  [defaultCenter addObserver:self selector:sel__mediaLibraryContentDidChange_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:mediaLibrary];
}

- (void)_removeMediaLibraryNotificationObservers
{
  _deviceMediaLibrary = [(VUIMPMenuDataSource *)self _deviceMediaLibrary];
  if (_deviceMediaLibrary)
  {
    v4 = _deviceMediaLibrary;
    [(VUIMPMenuDataSource *)self _removeNotificationObserversWithDeviceLibrary:_deviceMediaLibrary];
    _deviceMediaLibrary = v4;
  }
}

- (void)_removeNotificationObserversWithDeviceLibrary:(id)library
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUIMediaLibraryManagerHomeSharesDidChangeNotification" object:0];
}

- (void)_addRentalsUpdateNotificationObserver
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateRentalShelf name:@"VUIRentalExpirationMonitorRentalDidExpireNotification" object:0];
}

- (void)_removeRentalsUpdateNotificationObserver
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUIRentalExpirationMonitorRentalDidExpireNotification" object:0];
}

- (void)_addAccountChangedNotificationObserver
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountsChanged_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];
}

- (void)_removeAccountChangedNotificationObserver
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A40] object:0];
}

- (void)_homeShareMediaLibrariesDidChange:(id)change
{
  v30 = *MEMORY[0x1E69E9840];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"VUIMediaLibraryManagerHomeSharesDidChangeUserInfoKeyMediaLibraries"];
  v6 = [userInfo objectForKey:@"VUIMediaLibraryManagerHomeSharesDidChangeUserInfoKeyChangeSet"];
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted])
  {
    homeShares = [(VUIMPMenuDataSource *)self homeShares];
    v8 = [homeShares vui_arrayByApplyingChangeSet:v6 destinationObjects:v5];
    if ([homeShares count] && !objc_msgSend(v8, "count"))
    {
      v23 = v8;
      v24 = v6;
      v14 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      categoryTypes = [(VUIMPMenuDataSource *)self categoryTypes];
      v16 = [categoryTypes countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(categoryTypes);
            }

            v20 = *(*(&v25 + 1) + 8 * i);
            if ([v20 intValue] != 9)
            {
              [v14 addObject:v20];
            }
          }

          v17 = [categoryTypes countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v17);
      }

      v21 = [v14 copy];
      [(VUIMPMenuDataSource *)self setCategoryTypes:v21];

      _constructCategoryList = [(VUIMPMenuDataSource *)self _constructCategoryList];
      [(VUILibraryMenuDataSource *)self setMenuItems:_constructCategoryList];

      if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
      {
        [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
      }

      v8 = v23;
      v6 = v24;
    }

    else if (![homeShares count] && objc_msgSend(v8, "count"))
    {
      v9 = MEMORY[0x1E695DF70];
      categoryTypes2 = [(VUIMPMenuDataSource *)self categoryTypes];
      v11 = [v9 arrayWithArray:categoryTypes2];

      [v11 addObject:&unk_1F5E5D110];
      v12 = [v11 copy];
      [(VUIMPMenuDataSource *)self setCategoryTypes:v12];

      _constructCategoryList2 = [(VUIMPMenuDataSource *)self _constructCategoryList];
      [(VUILibraryMenuDataSource *)self setMenuItems:_constructCategoryList2];

      if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
      {
        [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
      }
    }

    [(VUIMPMenuDataSource *)self setHomeShares:v8, v23, v24];
  }

  else
  {
    [(VUIMPMenuDataSource *)self setHomeShares:v5];
  }
}

- (void)_mediaLibraryContentDidChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  object = [change object];
  mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];

  if (object == mediaLibrary)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mediaLibrary2 = [(VUIMPMenuDataSource *)self mediaLibrary];
      identifier = [mediaLibrary2 identifier];
      v9 = 138412290;
      v10 = identifier;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIMPMenuDataSource:: mediaLibrary %@ ContentDidChange", &v9, 0xCu);
    }

    [(VUIMPMenuDataSource *)self _loadGenres];
  }
}

- (void)_loadMediaEntityShelvesWithInitialFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
  v15 = 0;
  v6 = [(VUIMPMenuDataSource *)self _fetchRequestsWithMediaLibrary:mediaLibrary categoryTypeMap:&v15 isInitialFetch:fetchCopy];
  v7 = v15;

  [(VUIMPMenuDataSource *)self setCategoryTypeByFetchRequestIdentifier:v7];
  v8 = [VUIMediaEntitiesFetchController alloc];
  mediaLibrary2 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v10 = [(VUIMediaEntitiesFetchController *)v8 initWithMediaLibrary:mediaLibrary2 fetchRequests:v6];
  [(VUIMPMenuDataSource *)self setMediaEntitiesFetchController:v10];

  mediaEntitiesFetchController = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];
  [mediaEntitiesFetchController setDelegate:self];

  [(VUIMPMenuDataSource *)self _loadGenres];
  mediaLibrary3 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v13 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:mediaLibrary3];
  mediaEntitiesFetchController2 = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];
  [v13 addFetchController:mediaEntitiesFetchController2];
}

- (id)_fetchRequestsWithMediaLibrary:(id)library categoryTypeMap:(id *)map isInitialFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v57[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  validCategories = [(VUILibraryMenuDataSource *)self validCategories];
  v12 = [validCategories containsObject:&unk_1F5E5D158];

  if (v12 && ![libraryCopy type])
  {
    v13 = +[VUIMediaEntityFetchRequest movieRentalsFetchRequest];
    v52 = objc_alloc(MEMORY[0x1E695DEC8]);
    v53 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rentalExpirationDate" ascending:1];
    v54 = [v52 initWithObjects:{v53, 0}];

    [v13 setSortDescriptors:v54];
    [(VUIMPMenuDataSource *)self _updateFetchRequest:v13 isInitialFetch:fetchCopy];
    [v9 addObject:v13];
    identifier = [v13 identifier];
    [v10 setObject:&unk_1F5E5D158 forKey:identifier];
  }

  else
  {
    v13 = 0;
  }

  validCategories2 = [(VUILibraryMenuDataSource *)self validCategories];
  v15 = [validCategories2 containsObject:&unk_1F5E5D170];

  if (v15)
  {
    v16 = [VUIMediaEntityFetchRequest alloc];
    v17 = MEMORY[0x1E695DFD8];
    +[VUIMediaEntityType movie];
    v56 = v10;
    v18 = v9;
    v19 = fetchCopy;
    mapCopy = map;
    v22 = v21 = libraryCopy;
    v23 = +[VUIMediaEntityType show];
    v24 = [v17 setWithObjects:{v22, v23, 0}];
    v25 = [(VUIMediaEntityFetchRequest *)v16 initWithMediaEntityTypes:v24];

    libraryCopy = v21;
    map = mapCopy;
    fetchCopy = v19;
    v9 = v18;
    v10 = v56;
    v26 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
    [(VUIMediaEntityFetchRequest *)v25 setProperties:v26];

    v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v57[0] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    [(VUIMediaEntityFetchRequest *)v25 setSortDescriptors:v28];

    [(VUIMediaEntityFetchRequest *)v25 addRecentlyAddedSortDescriptorWithLimit:25];
    v29 = MEMORY[0x1E696AE18];
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = [v29 vui_predicateWithSubpredicates:v30 type:1];
    [(VUIMediaEntityFetchRequest *)v25 setPredicate:v31];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v25 isInitialFetch:fetchCopy];
    [v9 addObject:v25];
    identifier2 = [(VUIMediaEntityFetchRequest *)v25 identifier];
    [v56 setObject:&unk_1F5E5D170 forKey:identifier2];

    v13 = v25;
  }

  validCategories3 = [(VUILibraryMenuDataSource *)self validCategories];
  v34 = [validCategories3 containsObject:&unk_1F5E5D188];

  if (v34)
  {
    v35 = +[VUIMediaEntityFetchRequest homeVideosFetchRequest];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v35 isInitialFetch:fetchCopy];
    [v9 addObject:v35];
    identifier3 = [v35 identifier];
    [v10 setObject:&unk_1F5E5D188 forKey:identifier3];

    v13 = v35;
  }

  validCategories4 = [(VUILibraryMenuDataSource *)self validCategories];
  v38 = [validCategories4 containsObject:&unk_1F5E5D1A0];

  if (v38)
  {
    v39 = +[VUIMediaEntityFetchRequest showsFetchRequest];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v39 isInitialFetch:fetchCopy];
    [v9 addObject:v39];
    identifier4 = [v39 identifier];
    [v10 setObject:&unk_1F5E5D1A0 forKey:identifier4];

    v13 = v39;
  }

  validCategories5 = [(VUILibraryMenuDataSource *)self validCategories];
  v42 = [validCategories5 containsObject:&unk_1F5E5D1B8];

  if (v42)
  {
    v43 = +[VUIMediaEntityFetchRequest moviesFetchRequest];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v43 isInitialFetch:fetchCopy];
    [v9 addObject:v43];
    identifier5 = [v43 identifier];
    [v10 setObject:&unk_1F5E5D1B8 forKey:identifier5];

    v13 = v43;
  }

  validCategories6 = [(VUILibraryMenuDataSource *)self validCategories];
  v46 = [validCategories6 containsObject:&unk_1F5E5D1D0];

  if (v46 && SSDeviceIsHDRCapable())
  {
    v47 = +[VUIMediaEntityFetchRequest moviesFetchRequest];

    [v47 addHDRColorCapabilityOr4KResolutionPredicate];
    [(VUIMPMenuDataSource *)self _updateFetchRequest:v47 isInitialFetch:fetchCopy];
    [v9 addObject:v47];
    identifier6 = [v47 identifier];
    [v10 setObject:&unk_1F5E5D1D0 forKey:identifier6];

    v13 = v47;
  }

  if (map)
  {
    v49 = v10;
    *map = v10;
  }

  v50 = [v9 copy];

  return v50;
}

- (void)_loadGenres
{
  validCategories = [(VUILibraryMenuDataSource *)self validCategories];
  v4 = [validCategories containsObject:&unk_1F5E5D1E8];

  if (v4)
  {
    mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    mediaLibrary2 = [(VUIMPMenuDataSource *)self mediaLibrary];
    mediaLibrary3 = mediaLibrary2;
    if (isKindOfClass)
    {
      v7MediaLibrary = [mediaLibrary2 mediaLibrary];
      v9MediaLibrary = [v7MediaLibrary mediaLibrary];
    }

    else
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      mediaLibrary3 = [(VUIMPMenuDataSource *)self mediaLibrary];
      v9MediaLibrary = [mediaLibrary3 mediaLibrary];
    }

    if (v9MediaLibrary)
    {
      v12 = [MEMORY[0x1E6970618] vui_GenresQueryWithMediaLibrary:v9MediaLibrary];
      objc_initWeak(&location, self);
      v13 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__VUIMPMenuDataSource__loadGenres__block_invoke;
      block[3] = &unk_1E87301C0;
      v16 = v12;
      v14 = v12;
      objc_copyWeak(&v17, &location);
      dispatch_async(v13, block);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
LABEL_10:

      return;
    }

LABEL_8:
    v9MediaLibrary = VUIDefaultLogObject();
    if (os_log_type_enabled(v9MediaLibrary, OS_LOG_TYPE_ERROR))
    {
      [(VUIMPMenuDataSource *)v9MediaLibrary _loadGenres];
    }

    goto LABEL_10;
  }
}

void __34__VUIMPMenuDataSource__loadGenres__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) collections];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = *MEMORY[0x1E696F8F8];
    v8 = *MEMORY[0x1E696F900];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v7];
        v12 = v11;
        if (v11 && [v11 length])
        {
          [v20 addObject:v12];
          v13 = [v10 valueForProperty:v8];
          v14 = v13;
          if (v13)
          {
            v15 = VUILibraryGenreFromGenreID([v13 integerValue]);
          }

          else
          {
            v15 = 0;
          }

          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
          [v2 addObject:v16];
        }

        else
        {
          v14 = VUIDefaultLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __34__VUIMPMenuDataSource__loadGenres__block_invoke_cold_1(&buf, v26, v14);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VUIMPMenuDataSource__loadGenres__block_invoke_55;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v24, (a1 + 40));
  v22 = v20;
  v23 = v2;
  v17 = v2;
  v18 = v20;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v24);
}

void __34__VUIMPMenuDataSource__loadGenres__block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setGenreTitles:*(a1 + 32)];
  [WeakRetained setGenreTypes:*(a1 + 40)];
  if ([WeakRetained _allFetchesHaveCompleted])
  {
    v2 = [WeakRetained _constructCategoryList];
    [WeakRetained setMenuItems:v2];

    [WeakRetained _notifyDelegateFetchDidComplete];
  }
}

- (id)_constructCategoryList
{
  v3 = self->_genreTitles;
  v4 = self->_genreTypes;
  if (!self->_genreTitles)
  {

    v3 = MEMORY[0x1E695E0F0];
  }

  if (!self->_genreTypes)
  {

    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = [VUIMenuDataSource alloc];
  categoryTypes = [(VUIMPMenuDataSource *)self categoryTypes];
  v7 = [(NSArray *)v3 copy];
  v8 = [(VUIMenuDataSource *)v5 initWithMainMenuItems:categoryTypes genreMenuItems:v7];

  v9 = [(NSArray *)v4 copy];
  [(VUIMenuDataSource *)v8 setGenreTypes:v9];

  return v8;
}

- (id)_categoryTypesWithMediaEntitiesMap:(id)map categoryTypeComparator:(id)comparator
{
  comparatorCopy = comparator;
  v6 = MEMORY[0x1E695DF70];
  mapCopy = map;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__VUIMPMenuDataSource__categoryTypesWithMediaEntitiesMap_categoryTypeComparator___block_invoke;
  v12[3] = &unk_1E87319B0;
  v9 = v8;
  v13 = v9;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v12];

  if (comparatorCopy)
  {
    [v9 sortUsingComparator:comparatorCopy];
  }

  v10 = [v9 copy];

  return v10;
}

void __81__VUIMPMenuDataSource__categoryTypesWithMediaEntitiesMap_categoryTypeComparator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_categoryTypesWithOptimizedMenuDataMap:(id)map categoryTypeComparator:(id)comparator
{
  comparatorCopy = comparator;
  v6 = MEMORY[0x1E695DF70];
  mapCopy = map;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__VUIMPMenuDataSource__categoryTypesWithOptimizedMenuDataMap_categoryTypeComparator___block_invoke;
  v12[3] = &unk_1E87319D8;
  v9 = v8;
  v13 = v9;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v12];

  if (comparatorCopy)
  {
    [v9 sortUsingComparator:comparatorCopy];
  }

  v10 = [v9 copy];

  return v10;
}

void __85__VUIMPMenuDataSource__categoryTypesWithOptimizedMenuDataMap_categoryTypeComparator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)_updateFetchRequest:(id)request isInitialFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  requestCopy = request;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (fetchCopy && userInterfaceIdiom == 1)
  {
    [requestCopy addHasItemsOption];
  }
}

- (void)_updateRentalShelf
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = +[VUIMediaEntityFetchRequest movieRentalsFetchRequest];
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rentalExpirationDate" ascending:1];
  v6 = [v4 initWithObjects:{v5, 0}];

  [v3 setSortDescriptors:v6];
  v7 = [(NSDictionary *)self->_categoryTypeByFetchRequestIdentifier mutableCopy];
  identifier = [v3 identifier];
  [v7 setObject:&unk_1F5E5D158 forKey:identifier];

  v9 = [v7 copy];
  [(VUIMPMenuDataSource *)self setCategoryTypeByFetchRequestIdentifier:v9];

  v10 = [VUIMediaEntitiesFetchController alloc];
  mediaLibrary = [(VUIMPMenuDataSource *)self mediaLibrary];
  v17[0] = v3;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [(VUIMediaEntitiesFetchController *)v10 initWithMediaLibrary:mediaLibrary fetchRequests:v12];
  rentalsUpdateFetchController = self->_rentalsUpdateFetchController;
  self->_rentalsUpdateFetchController = v13;

  [(VUIMediaEntitiesFetchController *)self->_rentalsUpdateFetchController setDelegate:self];
  mediaLibrary2 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v16 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:mediaLibrary2];
  [v16 addFetchController:self->_rentalsUpdateFetchController];
}

- (void)_populateViewModelFromMeidaLibraryCategoryTypes:(id)types
{
  v13 = [MEMORY[0x1E695DF70] arrayWithArray:types];
  downloadEntities = [(VUIDownloadDataSource *)self->_downloadDataSource downloadEntities];
  if ([downloadEntities count])
  {
    v5 = [v13 containsObject:&unk_1F5E5D140];

    if ((v5 & 1) == 0)
    {
      [v13 addObject:&unk_1F5E5D140];
    }
  }

  else
  {
  }

  homeShares = [(VUIMPMenuDataSource *)self homeShares];
  v7 = [homeShares count];

  if (v7)
  {
    [v13 addObject:&unk_1F5E5D110];
  }

  familyDataSource = [(VUIMPMenuDataSource *)self familyDataSource];
  familyMembers = [familyDataSource familyMembers];
  if ([familyMembers count])
  {
    v10 = [v13 containsObject:&unk_1F5E5D128];

    if ((v10 & 1) == 0)
    {
      [v13 addObject:&unk_1F5E5D128];
    }
  }

  else
  {
  }

  v11 = [v13 copy];
  [(VUIMPMenuDataSource *)self setCategoryTypes:v11];

  _constructCategoryList = [(VUIMPMenuDataSource *)self _constructCategoryList];
  [(VUILibraryMenuDataSource *)self setMenuItems:_constructCategoryList];
}

- (void)_accountsChanged:(id)changed
{
  v4 = MEMORY[0x1E695E0F0];
  [(VUIMPMenuDataSource *)self setGenreTitles:MEMORY[0x1E695E0F0]];
  [(VUIMPMenuDataSource *)self setGenreTypes:v4];
  [(VUIMPMenuDataSource *)self setCategoryTypes:v4];
  validCategories = [(VUILibraryMenuDataSource *)self validCategories];
  v6 = [validCategories containsObject:&unk_1F5E5D128];

  if (v6)
  {
    if (+[VUIAuthenticationManager userHasActiveAccount])
    {
      v7 = objc_alloc_init(VUILibraryFamilyMembersDataSource);
      [(VUIMPMenuDataSource *)self setFamilyDataSource:v7];

      familyDataSource = [(VUIMPMenuDataSource *)self familyDataSource];
      [familyDataSource setDelegate:self];

      familyDataSource2 = [(VUIMPMenuDataSource *)self familyDataSource];
      [familyDataSource2 startFetch];
    }

    else
    {
      [(VUIMPMenuDataSource *)self setFamilyDataSource:0];
      [(VUIMPMenuDataSource *)self _addOrRemoveFamilySharingCategoryIfNeeded];
      if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
      {

        [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
      }
    }
  }
}

- (void)_notifyDelegateFetchDidComplete
{
  [(VUILibraryDataSource *)self setHasCompletedInitialFetch:1];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __54__VUIMPMenuDataSource__notifyDelegateFetchDidComplete__block_invoke;
  v7 = &unk_1E872E4B8;
  objc_copyWeak(&v8, &location);
  v3 = &v4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6(v3);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__VUIMPMenuDataSource__notifyDelegateFetchDidComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

void __34__VUIMPMenuDataSource__loadGenres__block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "VUIMPMenuDataSource - missing genre title", buf, 2u);
}

@end