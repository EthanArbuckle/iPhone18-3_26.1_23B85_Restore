@interface _PXPhotoLibraryCuratedLibraryAssetsDataSourceManagerConfiguration
- (id)configurationForZoomLevel:(int64_t)level;
@end

@implementation _PXPhotoLibraryCuratedLibraryAssetsDataSourceManagerConfiguration

- (id)configurationForZoomLevel:(int64_t)level
{
  v4 = [[PXCuratedLibraryZoomLevelDataConfiguration alloc] initWithZoomLevel:level assetsDataSourceManager:0 enableDays:[(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)self enableDays]];
  photoLibrary = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)self photoLibrary];
  [(PXCuratedLibraryZoomLevelDataConfiguration *)v4 setPhotoLibrary:photoLibrary];

  return v4;
}

@end