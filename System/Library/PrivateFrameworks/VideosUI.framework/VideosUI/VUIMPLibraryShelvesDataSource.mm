@interface VUIMPLibraryShelvesDataSource
- (VUIMPLibraryShelvesDataSource)initWithValidShelfTypes:(id)a3 forMediaLibrary:(id)a4;
- (id)_dataSourceForShelves;
- (void)_addRentalsUpdateNotificationObserver;
- (void)_removeRentalsUpdateNotificationObserver;
- (void)_updateRentalShelf;
- (void)dataSourceDidFinishFetching:(id)a3;
- (void)dealloc;
- (void)startFetch;
@end

@implementation VUIMPLibraryShelvesDataSource

- (VUIMPLibraryShelvesDataSource)initWithValidShelfTypes:(id)a3 forMediaLibrary:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VUIMPLibraryShelvesDataSource;
  v8 = [(VUILibraryShelvesDataSource *)&v11 initWithValidShelfTypes:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, a4);
    [(VUIMPLibraryShelvesDataSource *)v9 _addRentalsUpdateNotificationObserver];
  }

  return v9;
}

- (void)dealloc
{
  [(VUIMPLibraryShelvesDataSource *)self _removeRentalsUpdateNotificationObserver];
  [(NSMutableArray *)self->_fetchedDataSources removeAllObjects];
  v3.receiver = self;
  v3.super_class = VUIMPLibraryShelvesDataSource;
  [(VUIMPLibraryShelvesDataSource *)&v3 dealloc];
}

- (void)startFetch
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fetchedDataSources = self->_fetchedDataSources;
  self->_fetchedDataSources = v3;

  v5 = [(VUIMPLibraryShelvesDataSource *)self _dataSourceForShelves];
  [(VUILibraryShelvesDataSource *)self setDataSourcesByShelfType:v5];
}

- (void)dataSourceDidFinishFetching:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_fetchedDataSources addObject:v4];
  v5 = [(NSMutableArray *)self->_fetchedDataSources count];
  v6 = [(VUILibraryShelvesDataSource *)self shelfTypes];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __61__VUIMPLibraryShelvesDataSource_dataSourceDidFinishFetching___block_invoke;
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
}

void __61__VUIMPLibraryShelvesDataSource_dataSourceDidFinishFetching___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained shelvesDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 shelvesDidFinishWithDataSource:WeakRetained];
  }
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

- (id)_dataSourceForShelves
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(VUILibraryShelvesDataSource *)self shelfTypes];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 unsignedIntegerValue];
        v10 = [(VUIMPLibraryShelvesDataSource *)self mediaLibrary];
        v11 = [VUIMediaEntitiesDataSourceFactory dataSourceForShelf:v9 withLibrary:v10];

        [v11 setDelegate:self];
        [v11 startFetch];
        [v3 setObject:v11 forKey:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)_updateRentalShelf
{
  v3 = [(VUILibraryShelvesDataSource *)self dataSourcesByShelfType];
  v4 = [v3 objectForKey:&unk_1F5E5E610];

  [(NSMutableArray *)self->_fetchedDataSources removeObject:v4];
  [v4 startFetch];
}

@end