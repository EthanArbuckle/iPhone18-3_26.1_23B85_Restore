@interface _PXPhotosViewSearchResultsDataSourceProvider
- (_PXPhotosViewSearchResultsDataSourceProvider)initWithAssetUUIDs:(id)a3 searchTitle:(id)a4 reverseSortOrder:(BOOL)a5;
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3;
- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)a3;
- (void)_updateConfiguration:(id)a3 fromDataSourceManager:(id)a4;
@end

@implementation _PXPhotosViewSearchResultsDataSourceProvider

- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  reverseSortOrder = self->_reverseSortOrder;
  v6 = a3;
  v7 = [v4 sortDescriptorWithKey:@"creationDate" ascending:!reverseSortOrder];
  v8 = [MEMORY[0x1E6978830] px_searchAssetFetchOptions];
  v25[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v8 setSortDescriptors:v9];

  assetUUIDs = self->_assetUUIDs;
  if (!assetUUIDs)
  {
    assetUUIDs = MEMORY[0x1E695E0F0];
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", assetUUIDs];
  [v8 setInternalPredicate:v11];

  [v8 setIncludeGuestAssets:1];
  v12 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v8];
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

  [(_PXPhotosViewSearchResultsDataSourceProvider *)self _updateConfiguration:v18 fromDataSourceManager:v6];
  v20 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v18];

  return v20;
}

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v4 = MEMORY[0x1E6978830];
  v5 = a3;
  v6 = [v4 px_searchAssetFetchOptions];
  v7 = [v6 photoLibrary];

  v8 = [PXPhotosDataSourceConfiguration alloc];
  v9 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:v7];
  v10 = [(PXPhotosDataSourceConfiguration *)v8 initWithAssetFetchResult:v9 options:0];

  [(_PXPhotosViewSearchResultsDataSourceProvider *)self _updateConfiguration:v10 fromDataSourceManager:v5];
  v11 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v10];

  return v11;
}

- (void)_updateConfiguration:(id)a3 fromDataSourceManager:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v5 filterPredicate];
  [v9 setFilterPredicate:v6];

  v7 = [v5 ignoreSharedLibraryFilters];
  [v9 setIgnoreSharedLibraryFilters:v7];
  v8 = [v5 libraryFilter];

  [v9 setLibraryFilter:v8];
  if (v7)
  {
    [v9 setLibraryFilterState:0];
    [v9 setLibraryFilter:0];
  }
}

- (_PXPhotosViewSearchResultsDataSourceProvider)initWithAssetUUIDs:(id)a3 searchTitle:(id)a4 reverseSortOrder:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _PXPhotosViewSearchResultsDataSourceProvider;
  v11 = [(_PXPhotosViewSearchResultsDataSourceProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetUUIDs, a3);
    objc_storeStrong(&v12->_title, a4);
    v12->_reverseSortOrder = a5;
  }

  return v12;
}

@end