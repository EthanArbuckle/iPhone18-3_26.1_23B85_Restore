@interface _PXPhotoLibraryCuratedLibraryAssetsDataSourceManagerConfiguration
- (id)configurationForZoomLevel:(int64_t)a3;
@end

@implementation _PXPhotoLibraryCuratedLibraryAssetsDataSourceManagerConfiguration

- (id)configurationForZoomLevel:(int64_t)a3
{
  v4 = [[PXCuratedLibraryZoomLevelDataConfiguration alloc] initWithZoomLevel:a3 assetsDataSourceManager:0 enableDays:[(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)self enableDays]];
  v5 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)self photoLibrary];
  [(PXCuratedLibraryZoomLevelDataConfiguration *)v4 setPhotoLibrary:v5];

  return v4;
}

@end