@interface _PXPhotosViewSearchResultsDataSourceProvider
- (_PXPhotosViewSearchResultsDataSourceProvider)initWithAssetUUIDs:(id)ds searchTitle:(id)title reverseSortOrder:(BOOL)order;
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager;
- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)manager;
- (void)_updateConfiguration:(id)configuration fromDataSourceManager:(id)manager;
@end

@implementation _PXPhotosViewSearchResultsDataSourceProvider

- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  reverseSortOrder = self->_reverseSortOrder;
  managerCopy = manager;
  v7 = [v4 sortDescriptorWithKey:@"creationDate" ascending:!reverseSortOrder];
  px_searchAssetFetchOptions = [MEMORY[0x1E6978830] px_searchAssetFetchOptions];
  v25[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [px_searchAssetFetchOptions setSortDescriptors:v9];

  assetUUIDs = self->_assetUUIDs;
  if (!assetUUIDs)
  {
    assetUUIDs = MEMORY[0x1E695E0F0];
  }

  assetUUIDs = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", assetUUIDs];
  [px_searchAssetFetchOptions setInternalPredicate:assetUUIDs];

  [px_searchAssetFetchOptions setIncludeGuestAssets:1];
  v12 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:px_searchAssetFetchOptions];
  v13 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v12 title:self->_title];
  v14 = MEMORY[0x1E6978760];
  v24 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v16 = [v14 transientCollectionListWithCollections:v15 title:self->_title];

  v17 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v16 options:0];
  v18 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v17 options:0];
  v22 = v13;
  v23 = v12;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [(PXPhotosDataSourceConfiguration *)v18 setExistingAssetCollectionFetchResults:v19];

  [(_PXPhotosViewSearchResultsDataSourceProvider *)self _updateConfiguration:v18 fromDataSourceManager:managerCopy];
  v20 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v18];

  return v20;
}

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  v4 = MEMORY[0x1E6978830];
  managerCopy = manager;
  px_searchAssetFetchOptions = [v4 px_searchAssetFetchOptions];
  photoLibrary = [px_searchAssetFetchOptions photoLibrary];

  v8 = [PXPhotosDataSourceConfiguration alloc];
  v9 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:photoLibrary];
  v10 = [(PXPhotosDataSourceConfiguration *)v8 initWithAssetFetchResult:v9 options:0];

  [(_PXPhotosViewSearchResultsDataSourceProvider *)self _updateConfiguration:v10 fromDataSourceManager:managerCopy];
  v11 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v10];

  return v11;
}

- (void)_updateConfiguration:(id)configuration fromDataSourceManager:(id)manager
{
  configurationCopy = configuration;
  managerCopy = manager;
  filterPredicate = [managerCopy filterPredicate];
  [configurationCopy setFilterPredicate:filterPredicate];

  ignoreSharedLibraryFilters = [managerCopy ignoreSharedLibraryFilters];
  [configurationCopy setIgnoreSharedLibraryFilters:ignoreSharedLibraryFilters];
  libraryFilter = [managerCopy libraryFilter];

  [configurationCopy setLibraryFilter:libraryFilter];
  if (ignoreSharedLibraryFilters)
  {
    [configurationCopy setLibraryFilterState:0];
    [configurationCopy setLibraryFilter:0];
  }
}

- (_PXPhotosViewSearchResultsDataSourceProvider)initWithAssetUUIDs:(id)ds searchTitle:(id)title reverseSortOrder:(BOOL)order
{
  dsCopy = ds;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = _PXPhotosViewSearchResultsDataSourceProvider;
  v11 = [(_PXPhotosViewSearchResultsDataSourceProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetUUIDs, ds);
    objc_storeStrong(&v12->_title, title);
    v12->_reverseSortOrder = order;
  }

  return v12;
}

@end