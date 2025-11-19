@interface VUIFamilySharingLibraryShelvesDataSource
- (VUIFamilySharingLibraryShelvesDataSource)initWithValidShelfTypes:(id)a3 withFamilyMember:(id)a4;
- (id)_dataSourceForShelves;
- (void)dataSourceDidFinishFetching:(id)a3;
- (void)dealloc;
- (void)startFetch;
@end

@implementation VUIFamilySharingLibraryShelvesDataSource

- (VUIFamilySharingLibraryShelvesDataSource)initWithValidShelfTypes:(id)a3 withFamilyMember:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VUIFamilySharingLibraryShelvesDataSource;
  v8 = [(VUILibraryShelvesDataSource *)&v11 initWithValidShelfTypes:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_familyMember, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_fetchedDataSources removeAllObjects];
  v3.receiver = self;
  v3.super_class = VUIFamilySharingLibraryShelvesDataSource;
  [(VUIFamilySharingLibraryShelvesDataSource *)&v3 dealloc];
}

- (void)startFetch
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  fetchedDataSources = self->_fetchedDataSources;
  self->_fetchedDataSources = v3;

  v5 = [(VUIFamilySharingLibraryShelvesDataSource *)self _dataSourceForShelves];
  [(VUILibraryShelvesDataSource *)self setDataSourcesByShelfType:v5];
}

- (void)dataSourceDidFinishFetching:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_fetchedDataSources addObject:v4];
  v5 = [(NSMutableSet *)self->_fetchedDataSources count];
  v6 = [(VUILibraryShelvesDataSource *)self shelfTypes];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __72__VUIFamilySharingLibraryShelvesDataSource_dataSourceDidFinishFetching___block_invoke;
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

void __72__VUIFamilySharingLibraryShelvesDataSource_dataSourceDidFinishFetching___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained shelvesDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 shelvesDidFinishWithDataSource:WeakRetained];
  }
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
        v10 = [(VUIFamilySharingLibraryShelvesDataSource *)self familyMember];
        v11 = [VUIMediaEntitiesDataSourceFactory dataSourceForShelf:v9 withFamilyMember:v10];

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

@end