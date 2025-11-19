@interface PXScreenshotsStorageTipViewController
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3;
@end

@implementation PXScreenshotsStorageTipViewController

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3
{
  v5 = [(PXStorageManagementBaseController *)self photoLibrary];
  v6 = [v5 px_assetCollectionForSmartAlbumWithSubtype:211];

  v7 = [(PXStorageManagementBaseController *)self photoLibrary];
  v8 = [PXStorageManagementUtility storageTipAssetFetchOptionsForType:1 photoLibrary:v7];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v8];
  v10 = MEMORY[0x1E6978650];
  v11 = [v6 localizedTitle];
  v12 = [v10 transientAssetCollectionWithAssetFetchResult:v9 title:v11];

  v13 = PXPhotosViewConfigurationForStorageTipWithAssetCollection(v12, a3);
  v14 = [(PXScreenshotsStorageTipViewController *)self title];
  [v13 setTitle:v14];

  return v13;
}

@end