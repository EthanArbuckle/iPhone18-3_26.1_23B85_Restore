@interface PXScreenshotsStorageTipViewController
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge;
@end

@implementation PXScreenshotsStorageTipViewController

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge
{
  photoLibrary = [(PXStorageManagementBaseController *)self photoLibrary];
  v6 = [photoLibrary px_assetCollectionForSmartAlbumWithSubtype:211];

  photoLibrary2 = [(PXStorageManagementBaseController *)self photoLibrary];
  v8 = [PXStorageManagementUtility storageTipAssetFetchOptionsForType:1 photoLibrary:photoLibrary2];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v8];
  v10 = MEMORY[0x1E6978650];
  localizedTitle = [v6 localizedTitle];
  v12 = [v10 transientAssetCollectionWithAssetFetchResult:v9 title:localizedTitle];

  v13 = PXPhotosViewConfigurationForStorageTipWithAssetCollection(v12, expunge);
  title = [(PXScreenshotsStorageTipViewController *)self title];
  [v13 setTitle:title];

  return v13;
}

@end