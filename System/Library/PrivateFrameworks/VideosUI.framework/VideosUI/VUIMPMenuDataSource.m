@interface VUIMPMenuDataSource
- (BOOL)_addOrRemoveDownloadCategoryIfNeeded;
- (BOOL)_addOrRemoveFamilySharingCategoryIfNeeded;
- (VUIMPMenuDataSource)initWithValidCategories:(id)a3;
- (id)_categoryTypesWithMediaEntitiesMap:(id)a3 categoryTypeComparator:(id)a4;
- (id)_categoryTypesWithOptimizedMenuDataMap:(id)a3 categoryTypeComparator:(id)a4;
- (id)_constructCategoryList;
- (id)_deviceMediaLibrary;
- (id)_fetchRequestsWithMediaLibrary:(id)a3 categoryTypeMap:(id *)a4 isInitialFetch:(BOOL)a5;
- (void)_accountsChanged:(id)a3;
- (void)_addAccountChangedNotificationObserver;
- (void)_addMediaLibraryNotificationObservers;
- (void)_addNotificationObserversWithDeviceLibrary:(id)a3;
- (void)_addRentalsUpdateNotificationObserver;
- (void)_homeShareMediaLibrariesDidChange:(id)a3;
- (void)_loadGenres;
- (void)_loadMediaEntityShelvesWithInitialFetch:(BOOL)a3;
- (void)_mediaLibraryContentDidChange:(id)a3;
- (void)_notifyDelegateFetchDidComplete;
- (void)_populateViewModelFromMeidaLibraryCategoryTypes:(id)a3;
- (void)_removeAccountChangedNotificationObserver;
- (void)_removeMediaLibraryNotificationObservers;
- (void)_removeNotificationObserversWithDeviceLibrary:(id)a3;
- (void)_removeRentalsUpdateNotificationObserver;
- (void)_updateFetchRequest:(id)a3 isInitialFetch:(BOOL)a4;
- (void)_updateRentalShelf;
- (void)controller:(id)a3 fetchRequests:(id)a4 didCompleteWithResult:(id)a5;
- (void)controller:(id)a3 fetchRequests:(id)a4 didFailWithError:(id)a5;
- (void)dataSourceDidFinishFetching:(id)a3;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadedFetchDidFinishWithEntities:(id)a4;
- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4;
- (void)refetch;
- (void)setMediaLibrary:(id)a3;
- (void)startFetch;
@end

@implementation VUIMPMenuDataSource

- (VUIMPMenuDataSource)initWithValidCategories:(id)a3
{
  v10.receiver = self;
  v10.super_class = VUIMPMenuDataSource;
  v3 = [(VUILibraryMenuDataSource *)&v10 initWithValidCategories:a3];
  v4 = v3;
  if (v3)
  {
    v3->_hasMediaEntitiesFetchCompleted = 0;
    [(VUIMPMenuDataSource *)v3 _addRentalsUpdateNotificationObserver];
    [(VUIMPMenuDataSource *)v4 _addAccountChangedNotificationObserver];
    v5 = +[VUIMediaLibraryManager defaultManager];
    v6 = [v5 aggregateMediaLibrary];
    v7 = [VUIMediaEntitiesDataSourceFactory dataSourceForCategoryType:8 withLibrary:v6];
    [(VUIMPMenuDataSource *)v4 setDownloadDataSource:v7];

    v8 = [(VUIMPMenuDataSource *)v4 downloadDataSource];
    [v8 setDownloadDelegate:v4];

    [(VUIMPMenuDataSource *)v4 setHasDownloadDataSourceFetchCompleted:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];

  if (v3)
  {
    v4 = [(VUIMPMenuDataSource *)self mediaLibrary];
    v5 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v4];
    v6 = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];
    [v5 removeFetchController:v6];

    [(VUIMediaEntitiesFetchController *)self->_mediaEntitiesFetchController setDelegate:0];
  }

  v7 = [(VUIMPMenuDataSource *)self rentalsUpdateFetchController];

  if (v7)
  {
    v8 = [(VUIMPMenuDataSource *)self mediaLibrary];
    v9 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v8];
    v10 = [(VUIMPMenuDataSource *)self rentalsUpdateFetchController];
    [v9 removeFetchController:v10];

    [(VUIMediaEntitiesFetchController *)self->_rentalsUpdateFetchController setDelegate:0];
  }

  [(VUIMPMenuDataSource *)self _removeMediaLibraryNotificationObservers];
  [(VUIMPMenuDataSource *)self _removeRentalsUpdateNotificationObserver];
  [(VUIMPMenuDataSource *)self _removeAccountChangedNotificationObserver];
  v11 = [(VUIMPMenuDataSource *)self downloadDataSource];
  [v11 setDelegate:0];

  v12.receiver = self;
  v12.super_class = VUIMPMenuDataSource;
  [(VUIMPMenuDataSource *)&v12 dealloc];
}

- (void)setMediaLibrary:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_mediaLibrary, a3);
  [(VUIMPMenuDataSource *)self _addMediaLibraryNotificationObservers];
  v5 = [(VUILibraryMenuDataSource *)self validCategories];
  if ([v5 containsObject:&unk_1F5E5D110])
  {
    v6 = [(VUIMPMenuDataSource *)self mediaLibrary];
    v7 = [v6 type];

    if (!v7)
    {
      v8 = +[VUIMediaLibraryManager defaultManager];
      v9 = [v8 homeShareMediaLibraries];
      [(VUIMPMenuDataSource *)self setHomeShares:v9];

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
    v3 = [(VUIMPMenuDataSource *)self downloadDataSource];
    [v3 loadDownloadData];

    v7 = [(VUILibraryMenuDataSource *)self validCategories];
    if ([v7 containsObject:&unk_1F5E5D128])
    {
      v4 = +[VUIAuthenticationManager userHasActiveAccount];

      if (!v4)
      {
        return;
      }

      v5 = objc_alloc_init(VUILibraryFamilyMembersDataSource);
      [(VUIMPMenuDataSource *)self setFamilyDataSource:v5];

      v6 = [(VUIMPMenuDataSource *)self familyDataSource];
      [v6 setDelegate:self];

      v7 = [(VUIMPMenuDataSource *)self familyDataSource];
      [v7 startFetch];
    }
  }
}

- (void)refetch
{
  [(VUIMPMenuDataSource *)self setHasMediaEntitiesFetchCompleted:0];
  [(VUIMPMenuDataSource *)self _refetchMediaEntityShelves];
  v3 = [(VUIMPMenuDataSource *)self downloadDataSource];
  [v3 loadDownloadData];

  v7 = [(VUILibraryMenuDataSource *)self validCategories];
  if ([v7 containsObject:&unk_1F5E5D128])
  {
    v4 = +[VUIAuthenticationManager userHasActiveAccount];

    if (!v4)
    {
      return;
    }

    v5 = objc_alloc_init(VUILibraryFamilyMembersDataSource);
    [(VUIMPMenuDataSource *)self setFamilyDataSource:v5];

    v6 = [(VUIMPMenuDataSource *)self familyDataSource];
    [v6 setDelegate:self];

    v7 = [(VUIMPMenuDataSource *)self familyDataSource];
    [v7 startFetch];
  }
}

- (void)downloadManager:(id)a3 downloadedFetchDidFinishWithEntities:(id)a4
{
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted:a3])
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

- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4
{
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted:a3])
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

  v4 = [(VUIMPMenuDataSource *)self downloadDataSource];
  v5 = [v4 downloadEntities];
  v6 = [v5 count];

  if (!v6)
  {
    v10 = [(VUIMPMenuDataSource *)self mediaEntitiesByCategoryType];
    v11 = [v10 objectForKey:&unk_1F5E5D140];
    if (v11)
    {
      v6 = [(VUIMPMenuDataSource *)self mediaEntitiesByCategoryType];
      v2 = [v6 objectForKey:&unk_1F5E5D140];
      if ([v2 count])
      {

        v9 = 0;
LABEL_15:

        return v9;
      }
    }

    v15 = [(VUIMPMenuDataSource *)self categoryTypes];
    v16 = [v15 containsObject:&unk_1F5E5D140];

    if (v11)
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
    v18 = [(VUIMPMenuDataSource *)self categoryTypes];
    v10 = [v17 arrayWithArray:v18];

    [v10 removeObject:&unk_1F5E5D140];
LABEL_14:
    v19 = [v10 copy];
    [(VUIMPMenuDataSource *)self setCategoryTypes:v19];

    v11 = [(VUIMPMenuDataSource *)self _constructCategoryList];
    [(VUILibraryMenuDataSource *)self setMenuItems:v11];
    v9 = 1;
    goto LABEL_15;
  }

  v7 = [(VUIMPMenuDataSource *)self categoryTypes];
  v8 = [v7 containsObject:&unk_1F5E5D140];

  if ((v8 & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF70];
    v13 = [(VUIMPMenuDataSource *)self categoryTypes];
    v10 = [v12 arrayWithArray:v13];

    [v10 addObject:&unk_1F5E5D140];
    v14 = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
    [v10 sortUsingComparator:v14];

    goto LABEL_14;
  }

  return 0;
}

- (void)dataSourceDidFinishFetching:(id)a3
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

  v3 = [(VUIMPMenuDataSource *)self familyDataSource];
  v4 = [v3 familyMembers];
  v5 = [v4 count];

  v6 = [(VUIMPMenuDataSource *)self categoryTypes];
  v7 = [v6 containsObject:&unk_1F5E5D128];

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF70];
      v9 = [(VUIMPMenuDataSource *)self categoryTypes];
      v10 = [v8 arrayWithArray:v9];

      [v10 addObject:&unk_1F5E5D128];
      v11 = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
      [v10 sortUsingComparator:v11];

LABEL_8:
      v15 = [v10 copy];
      [(VUIMPMenuDataSource *)self setCategoryTypes:v15];

      v16 = [(VUIMPMenuDataSource *)self _constructCategoryList];
      [(VUILibraryMenuDataSource *)self setMenuItems:v16];

      return 1;
    }
  }

  else if (v7)
  {
    v13 = MEMORY[0x1E695DF70];
    v14 = [(VUIMPMenuDataSource *)self categoryTypes];
    v10 = [v13 arrayWithArray:v14];

    [v10 removeObject:&unk_1F5E5D128];
    goto LABEL_8;
  }

  return 0;
}

- (void)controller:(id)a3 fetchRequests:(id)a4 didCompleteWithResult:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v43 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [v9 fetchResponses];
  v13 = v12;
  if (self->_rentalsUpdateFetchController == v8)
  {
    if (v12)
    {
      v30 = [v12 firstObject];
      v31 = [v30 mediaEntities];
    }

    else
    {
      v31 = 0;
    }

    v32 = self->_mediaEntitiesByCategoryType;

    if ([v31 count])
    {
      v33 = v32;
      v34 = v31;
    }

    else
    {
      v34 = MEMORY[0x1E695E0F0];
      v33 = v32;
    }

    [(NSDictionary *)v33 setObject:v34 forKey:&unk_1F5E5D158];

    goto LABEL_23;
  }

  if (self->_mediaEntitiesFetchController != v8)
  {
    goto LABEL_29;
  }

  if (![v12 count])
  {
    v32 = v10;
LABEL_23:
    v28 = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
    v29 = [(VUIMPMenuDataSource *)self _categoryTypesWithMediaEntitiesMap:v32 categoryTypeComparator:v28];
    v10 = v32;
    goto LABEL_24;
  }

  v41 = v10;
  v42 = v11;
  v38 = v9;
  v39 = v8;
  v40 = 0;
  v14 = 0;
  do
  {
    v15 = [v43 objectAtIndex:v14];
    v16 = [v15 options];
    v17 = [v16 vui_BOOLForKey:@"CheckHasItems" defaultValue:0];
    v18 = [v13 objectAtIndex:v14];
    v19 = [(VUIMPMenuDataSource *)self categoryTypeByFetchRequestIdentifier];
    v20 = [v15 identifier];
    v21 = [v19 objectForKey:v20];

    if (v21)
    {
      v22 = [v18 mediaEntities];
      v23 = v22;
      if (v17)
      {
        v24 = [v18 hasDataForCheckHasItemsOption];
        v25 = [MEMORY[0x1E696AD98] numberWithBool:v24];
        [v42 setObject:v25 forKey:v21];

        v40 = 1;
      }

      else
      {
        if (v22)
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
    v9 = v38;
    v8 = v39;
    goto LABEL_23;
  }

  v28 = [(VUIMPMenuDataSource *)self _categoryTypesSortComparator];
  v11 = v42;
  v29 = [(VUIMPMenuDataSource *)self _categoryTypesWithOptimizedMenuDataMap:v42 categoryTypeComparator:v28];
  v9 = v38;
  v8 = v39;
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

- (void)controller:(id)a3 fetchRequests:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_mediaEntitiesFetchController == v8 || self->_rentalsUpdateFetchController == v8)
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
  v2 = [(VUIMPMenuDataSource *)self mediaLibrary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_addMediaLibraryNotificationObservers
{
  v3 = [(VUIMPMenuDataSource *)self _deviceMediaLibrary];
  if (v3)
  {
    v4 = v3;
    [(VUIMPMenuDataSource *)self _addNotificationObserversWithDeviceLibrary:v3];
    v3 = v4;
  }
}

- (void)_addNotificationObserversWithDeviceLibrary:(id)a3
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__homeShareMediaLibrariesDidChange_ name:@"VUIMediaLibraryManagerHomeSharesDidChangeNotification" object:0];
  v4 = [(VUIMPMenuDataSource *)self mediaLibrary];
  [v5 addObserver:self selector:sel__mediaLibraryContentDidChange_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v4];
}

- (void)_removeMediaLibraryNotificationObservers
{
  v3 = [(VUIMPMenuDataSource *)self _deviceMediaLibrary];
  if (v3)
  {
    v4 = v3;
    [(VUIMPMenuDataSource *)self _removeNotificationObserversWithDeviceLibrary:v3];
    v3 = v4;
  }
}

- (void)_removeNotificationObserversWithDeviceLibrary:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"VUIMediaLibraryManagerHomeSharesDidChangeNotification" object:0];
}

- (void)_addRentalsUpdateNotificationObserver
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__updateRentalShelf name:@"VUIRentalExpirationMonitorRentalDidExpireNotification" object:0];
}

- (void)_removeRentalsUpdateNotificationObserver
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"VUIRentalExpirationMonitorRentalDidExpireNotification" object:0];
}

- (void)_addAccountChangedNotificationObserver
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__accountsChanged_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];
}

- (void)_removeAccountChangedNotificationObserver
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4A40] object:0];
}

- (void)_homeShareMediaLibrariesDidChange:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"VUIMediaLibraryManagerHomeSharesDidChangeUserInfoKeyMediaLibraries"];
  v6 = [v4 objectForKey:@"VUIMediaLibraryManagerHomeSharesDidChangeUserInfoKeyChangeSet"];
  if ([(VUIMPMenuDataSource *)self hasMediaEntitiesFetchCompleted])
  {
    v7 = [(VUIMPMenuDataSource *)self homeShares];
    v8 = [v7 vui_arrayByApplyingChangeSet:v6 destinationObjects:v5];
    if ([v7 count] && !objc_msgSend(v8, "count"))
    {
      v23 = v8;
      v24 = v6;
      v14 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [(VUIMPMenuDataSource *)self categoryTypes];
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v25 + 1) + 8 * i);
            if ([v20 intValue] != 9)
            {
              [v14 addObject:v20];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v17);
      }

      v21 = [v14 copy];
      [(VUIMPMenuDataSource *)self setCategoryTypes:v21];

      v22 = [(VUIMPMenuDataSource *)self _constructCategoryList];
      [(VUILibraryMenuDataSource *)self setMenuItems:v22];

      if ([(VUIMPMenuDataSource *)self _allFetchesHaveCompleted])
      {
        [(VUIMPMenuDataSource *)self _notifyDelegateFetchDidComplete];
      }

      v8 = v23;
      v6 = v24;
    }

    else if (![v7 count] && objc_msgSend(v8, "count"))
    {
      v9 = MEMORY[0x1E695DF70];
      v10 = [(VUIMPMenuDataSource *)self categoryTypes];
      v11 = [v9 arrayWithArray:v10];

      [v11 addObject:&unk_1F5E5D110];
      v12 = [v11 copy];
      [(VUIMPMenuDataSource *)self setCategoryTypes:v12];

      v13 = [(VUIMPMenuDataSource *)self _constructCategoryList];
      [(VUILibraryMenuDataSource *)self setMenuItems:v13];

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

- (void)_mediaLibraryContentDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = [(VUIMPMenuDataSource *)self mediaLibrary];

  if (v4 == v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(VUIMPMenuDataSource *)self mediaLibrary];
      v8 = [v7 identifier];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIMPMenuDataSource:: mediaLibrary %@ ContentDidChange", &v9, 0xCu);
    }

    [(VUIMPMenuDataSource *)self _loadGenres];
  }
}

- (void)_loadMediaEntityShelvesWithInitialFetch:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v15 = 0;
  v6 = [(VUIMPMenuDataSource *)self _fetchRequestsWithMediaLibrary:v5 categoryTypeMap:&v15 isInitialFetch:v3];
  v7 = v15;

  [(VUIMPMenuDataSource *)self setCategoryTypeByFetchRequestIdentifier:v7];
  v8 = [VUIMediaEntitiesFetchController alloc];
  v9 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v10 = [(VUIMediaEntitiesFetchController *)v8 initWithMediaLibrary:v9 fetchRequests:v6];
  [(VUIMPMenuDataSource *)self setMediaEntitiesFetchController:v10];

  v11 = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];
  [v11 setDelegate:self];

  [(VUIMPMenuDataSource *)self _loadGenres];
  v12 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v13 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v12];
  v14 = [(VUIMPMenuDataSource *)self mediaEntitiesFetchController];
  [v13 addFetchController:v14];
}

- (id)_fetchRequestsWithMediaLibrary:(id)a3 categoryTypeMap:(id *)a4 isInitialFetch:(BOOL)a5
{
  v5 = a5;
  v57[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [(VUILibraryMenuDataSource *)self validCategories];
  v12 = [v11 containsObject:&unk_1F5E5D158];

  if (v12 && ![v8 type])
  {
    v13 = +[VUIMediaEntityFetchRequest movieRentalsFetchRequest];
    v52 = objc_alloc(MEMORY[0x1E695DEC8]);
    v53 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rentalExpirationDate" ascending:1];
    v54 = [v52 initWithObjects:{v53, 0}];

    [v13 setSortDescriptors:v54];
    [(VUIMPMenuDataSource *)self _updateFetchRequest:v13 isInitialFetch:v5];
    [v9 addObject:v13];
    v55 = [v13 identifier];
    [v10 setObject:&unk_1F5E5D158 forKey:v55];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(VUILibraryMenuDataSource *)self validCategories];
  v15 = [v14 containsObject:&unk_1F5E5D170];

  if (v15)
  {
    v16 = [VUIMediaEntityFetchRequest alloc];
    v17 = MEMORY[0x1E695DFD8];
    +[VUIMediaEntityType movie];
    v56 = v10;
    v18 = v9;
    v19 = v5;
    v20 = a4;
    v22 = v21 = v8;
    v23 = +[VUIMediaEntityType show];
    v24 = [v17 setWithObjects:{v22, v23, 0}];
    v25 = [(VUIMediaEntityFetchRequest *)v16 initWithMediaEntityTypes:v24];

    v8 = v21;
    a4 = v20;
    v5 = v19;
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

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v25 isInitialFetch:v5];
    [v9 addObject:v25];
    v32 = [(VUIMediaEntityFetchRequest *)v25 identifier];
    [v56 setObject:&unk_1F5E5D170 forKey:v32];

    v13 = v25;
  }

  v33 = [(VUILibraryMenuDataSource *)self validCategories];
  v34 = [v33 containsObject:&unk_1F5E5D188];

  if (v34)
  {
    v35 = +[VUIMediaEntityFetchRequest homeVideosFetchRequest];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v35 isInitialFetch:v5];
    [v9 addObject:v35];
    v36 = [v35 identifier];
    [v10 setObject:&unk_1F5E5D188 forKey:v36];

    v13 = v35;
  }

  v37 = [(VUILibraryMenuDataSource *)self validCategories];
  v38 = [v37 containsObject:&unk_1F5E5D1A0];

  if (v38)
  {
    v39 = +[VUIMediaEntityFetchRequest showsFetchRequest];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v39 isInitialFetch:v5];
    [v9 addObject:v39];
    v40 = [v39 identifier];
    [v10 setObject:&unk_1F5E5D1A0 forKey:v40];

    v13 = v39;
  }

  v41 = [(VUILibraryMenuDataSource *)self validCategories];
  v42 = [v41 containsObject:&unk_1F5E5D1B8];

  if (v42)
  {
    v43 = +[VUIMediaEntityFetchRequest moviesFetchRequest];

    [(VUIMPMenuDataSource *)self _updateFetchRequest:v43 isInitialFetch:v5];
    [v9 addObject:v43];
    v44 = [v43 identifier];
    [v10 setObject:&unk_1F5E5D1B8 forKey:v44];

    v13 = v43;
  }

  v45 = [(VUILibraryMenuDataSource *)self validCategories];
  v46 = [v45 containsObject:&unk_1F5E5D1D0];

  if (v46 && SSDeviceIsHDRCapable())
  {
    v47 = +[VUIMediaEntityFetchRequest moviesFetchRequest];

    [v47 addHDRColorCapabilityOr4KResolutionPredicate];
    [(VUIMPMenuDataSource *)self _updateFetchRequest:v47 isInitialFetch:v5];
    [v9 addObject:v47];
    v48 = [v47 identifier];
    [v10 setObject:&unk_1F5E5D1D0 forKey:v48];

    v13 = v47;
  }

  if (a4)
  {
    v49 = v10;
    *a4 = v10;
  }

  v50 = [v9 copy];

  return v50;
}

- (void)_loadGenres
{
  v3 = [(VUILibraryMenuDataSource *)self validCategories];
  v4 = [v3 containsObject:&unk_1F5E5D1E8];

  if (v4)
  {
    v5 = [(VUIMPMenuDataSource *)self mediaLibrary];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = [(VUIMPMenuDataSource *)self mediaLibrary];
    v8 = v7;
    if (isKindOfClass)
    {
      v9 = [v7 mediaLibrary];
      v10 = [v9 mediaLibrary];
    }

    else
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      v8 = [(VUIMPMenuDataSource *)self mediaLibrary];
      v10 = [v8 mediaLibrary];
    }

    if (v10)
    {
      v12 = [MEMORY[0x1E6970618] vui_GenresQueryWithMediaLibrary:v10];
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
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VUIMPMenuDataSource *)v10 _loadGenres];
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
  v6 = [(VUIMPMenuDataSource *)self categoryTypes];
  v7 = [(NSArray *)v3 copy];
  v8 = [(VUIMenuDataSource *)v5 initWithMainMenuItems:v6 genreMenuItems:v7];

  v9 = [(NSArray *)v4 copy];
  [(VUIMenuDataSource *)v8 setGenreTypes:v9];

  return v8;
}

- (id)_categoryTypesWithMediaEntitiesMap:(id)a3 categoryTypeComparator:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__VUIMPMenuDataSource__categoryTypesWithMediaEntitiesMap_categoryTypeComparator___block_invoke;
  v12[3] = &unk_1E87319B0;
  v9 = v8;
  v13 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];

  if (v5)
  {
    [v9 sortUsingComparator:v5];
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

- (id)_categoryTypesWithOptimizedMenuDataMap:(id)a3 categoryTypeComparator:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__VUIMPMenuDataSource__categoryTypesWithOptimizedMenuDataMap_categoryTypeComparator___block_invoke;
  v12[3] = &unk_1E87319D8;
  v9 = v8;
  v13 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];

  if (v5)
  {
    [v9 sortUsingComparator:v5];
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

- (void)_updateFetchRequest:(id)a3 isInitialFetch:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v4 && v6 == 1)
  {
    [v7 addHasItemsOption];
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
  v8 = [v3 identifier];
  [v7 setObject:&unk_1F5E5D158 forKey:v8];

  v9 = [v7 copy];
  [(VUIMPMenuDataSource *)self setCategoryTypeByFetchRequestIdentifier:v9];

  v10 = [VUIMediaEntitiesFetchController alloc];
  v11 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v17[0] = v3;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [(VUIMediaEntitiesFetchController *)v10 initWithMediaLibrary:v11 fetchRequests:v12];
  rentalsUpdateFetchController = self->_rentalsUpdateFetchController;
  self->_rentalsUpdateFetchController = v13;

  [(VUIMediaEntitiesFetchController *)self->_rentalsUpdateFetchController setDelegate:self];
  v15 = [(VUIMPMenuDataSource *)self mediaLibrary];
  v16 = [VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:v15];
  [v16 addFetchController:self->_rentalsUpdateFetchController];
}

- (void)_populateViewModelFromMeidaLibraryCategoryTypes:(id)a3
{
  v13 = [MEMORY[0x1E695DF70] arrayWithArray:a3];
  v4 = [(VUIDownloadDataSource *)self->_downloadDataSource downloadEntities];
  if ([v4 count])
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

  v6 = [(VUIMPMenuDataSource *)self homeShares];
  v7 = [v6 count];

  if (v7)
  {
    [v13 addObject:&unk_1F5E5D110];
  }

  v8 = [(VUIMPMenuDataSource *)self familyDataSource];
  v9 = [v8 familyMembers];
  if ([v9 count])
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

  v12 = [(VUIMPMenuDataSource *)self _constructCategoryList];
  [(VUILibraryMenuDataSource *)self setMenuItems:v12];
}

- (void)_accountsChanged:(id)a3
{
  v4 = MEMORY[0x1E695E0F0];
  [(VUIMPMenuDataSource *)self setGenreTitles:MEMORY[0x1E695E0F0]];
  [(VUIMPMenuDataSource *)self setGenreTypes:v4];
  [(VUIMPMenuDataSource *)self setCategoryTypes:v4];
  v5 = [(VUILibraryMenuDataSource *)self validCategories];
  v6 = [v5 containsObject:&unk_1F5E5D128];

  if (v6)
  {
    if (+[VUIAuthenticationManager userHasActiveAccount])
    {
      v7 = objc_alloc_init(VUILibraryFamilyMembersDataSource);
      [(VUIMPMenuDataSource *)self setFamilyDataSource:v7];

      v8 = [(VUIMPMenuDataSource *)self familyDataSource];
      [v8 setDelegate:self];

      v9 = [(VUIMPMenuDataSource *)self familyDataSource];
      [v9 startFetch];
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