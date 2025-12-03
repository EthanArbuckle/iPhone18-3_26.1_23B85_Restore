@interface PXDuplicatesStorageTipViewController
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge;
@end

@implementation PXDuplicatesStorageTipViewController

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge
{
  photoLibrary = [(PXStorageManagementBaseController *)self photoLibrary];
  v6 = [photoLibrary px_assetCollectionForSmartAlbumWithSubtype:1000000212];

  v7 = PXDeduplicationPhotosViewConfiguration(v6, 0, 0);
  StorageTipPXPhotosViewConfigurationForConfiguration(v7, expunge);
  objc_claimAutoreleasedReturnValue();

  title = [(PXDuplicatesStorageTipViewController *)self title];
  [v7 setTitle:title];

  [v7 setIgnoreFilterPredicateAssert:1];
  dataSourceManager = [v7 dataSourceManager];
  [dataSourceManager performChanges:&__block_literal_global_158589];

  return v7;
}

void __81__PXDuplicatesStorageTipViewController_photosViewConfigurationWithShouldExpunge___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PXStorageManagementUtility predicateForUploadedAssetFetch];
  [v2 setFilterPredicate:v3];
}

@end