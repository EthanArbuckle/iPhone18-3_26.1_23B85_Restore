@interface PXDuplicatesStorageTipViewController
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3;
@end

@implementation PXDuplicatesStorageTipViewController

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3
{
  v5 = [(PXStorageManagementBaseController *)self photoLibrary];
  v6 = [v5 px_assetCollectionForSmartAlbumWithSubtype:1000000212];

  v7 = PXDeduplicationPhotosViewConfiguration(v6, 0, 0);
  StorageTipPXPhotosViewConfigurationForConfiguration(v7, a3);
  objc_claimAutoreleasedReturnValue();

  v8 = [(PXDuplicatesStorageTipViewController *)self title];
  [v7 setTitle:v8];

  [v7 setIgnoreFilterPredicateAssert:1];
  v9 = [v7 dataSourceManager];
  [v9 performChanges:&__block_literal_global_158589];

  return v7;
}

void __81__PXDuplicatesStorageTipViewController_photosViewConfigurationWithShouldExpunge___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PXStorageManagementUtility predicateForUploadedAssetFetch];
  [v2 setFilterPredicate:v3];
}

@end