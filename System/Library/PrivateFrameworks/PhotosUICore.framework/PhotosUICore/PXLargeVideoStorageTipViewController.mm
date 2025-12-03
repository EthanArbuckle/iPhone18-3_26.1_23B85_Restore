@interface PXLargeVideoStorageTipViewController
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager;
- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)manager;
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PXLargeVideoStorageTipViewController

- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  v19[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  photoLibrary = [managerCopy photoLibrary];
  v5 = [PXStorageManagementUtility storageTipAssetFetchOptionsForType:2 photoLibrary:photoLibrary];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.originalFilesize" ascending:0];
  v19[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v5 setInternalSortDescriptors:v7];

  v8 = MEMORY[0x1E696AB28];
  internalPredicate = [v5 internalPredicate];
  v10 = +[PXStorageManagementUtility predicateForMinimumVideoSize];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v5 setInternalPredicate:v12];

  v13 = [MEMORY[0x1E6978630] fetchAssetsWithMediaType:2 options:v5];
  v14 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetFetchResult:v13 options:4097];
  filterPredicate = [managerCopy filterPredicate];

  [(PXPhotosDataSourceConfiguration *)v14 setFilterPredicate:filterPredicate];
  v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v14];

  return v16;
}

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  managerCopy = manager;
  v5 = [PXPhotosDataSourceConfiguration alloc];
  v6 = MEMORY[0x1E69788E0];
  photoLibrary = [(PXStorageManagementBaseController *)self photoLibrary];
  v8 = [v6 emptyFetchResultWithPhotoLibrary:photoLibrary];
  v9 = [(PXPhotosDataSourceConfiguration *)v5 initWithAssetFetchResult:v8 options:0];

  filterPredicate = [managerCopy filterPredicate];

  [(PXPhotosDataSourceConfiguration *)v9 setFilterPredicate:filterPredicate];
  v11 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v9];

  return v11;
}

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge
{
  v4 = PXPhotosViewConfigurationForStorageTipWithDataSourceProvider(self, expunge);
  title = [(PXLargeVideoStorageTipViewController *)self title];
  [v4 setTitle:title];

  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  navigationController = [(PXLargeVideoStorageTipViewController *)self navigationController];
  v6 = objc_opt_class();
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PXStorageManagementICPLEnableTipSizeRefreshRequired" object:0];
  }

  v9.receiver = self;
  v9.super_class = PXLargeVideoStorageTipViewController;
  [(PXLargeVideoStorageTipViewController *)&v9 viewDidDisappear:disappearCopy];
}

@end