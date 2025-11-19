@interface PXLargeVideoStorageTipViewController
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3;
- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)a3;
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PXLargeVideoStorageTipViewController

- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [PXStorageManagementUtility storageTipAssetFetchOptionsForType:2 photoLibrary:v4];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.originalFilesize" ascending:0];
  v19[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v5 setInternalSortDescriptors:v7];

  v8 = MEMORY[0x1E696AB28];
  v9 = [v5 internalPredicate];
  v10 = +[PXStorageManagementUtility predicateForMinimumVideoSize];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v5 setInternalPredicate:v12];

  v13 = [MEMORY[0x1E6978630] fetchAssetsWithMediaType:2 options:v5];
  v14 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetFetchResult:v13 options:4097];
  v15 = [v3 filterPredicate];

  [(PXPhotosDataSourceConfiguration *)v14 setFilterPredicate:v15];
  v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v14];

  return v16;
}

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v4 = a3;
  v5 = [PXPhotosDataSourceConfiguration alloc];
  v6 = MEMORY[0x1E69788E0];
  v7 = [(PXStorageManagementBaseController *)self photoLibrary];
  v8 = [v6 emptyFetchResultWithPhotoLibrary:v7];
  v9 = [(PXPhotosDataSourceConfiguration *)v5 initWithAssetFetchResult:v8 options:0];

  v10 = [v4 filterPredicate];

  [(PXPhotosDataSourceConfiguration *)v9 setFilterPredicate:v10];
  v11 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v9];

  return v11;
}

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3
{
  v4 = PXPhotosViewConfigurationForStorageTipWithDataSourceProvider(self, a3);
  v5 = [(PXLargeVideoStorageTipViewController *)self title];
  [v4 setTitle:v5];

  return v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXLargeVideoStorageTipViewController *)self navigationController];
  v6 = objc_opt_class();
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"PXStorageManagementICPLEnableTipSizeRefreshRequired" object:0];
  }

  v9.receiver = self;
  v9.super_class = PXLargeVideoStorageTipViewController;
  [(PXLargeVideoStorageTipViewController *)&v9 viewDidDisappear:v3];
}

@end