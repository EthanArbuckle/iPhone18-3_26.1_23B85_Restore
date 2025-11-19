@interface PXCuratedLibraryAssetsDataSourceManagerConfiguration
+ (id)configurationWithPhotoLibrary:(id)a3 enableDays:(BOOL)a4;
+ (id)configurationWithPhotoLibrary:(id)a3 yearsAssetsDataSourceManager:(id)a4 monthsAssetsDataSourceManager:(id)a5 daysAssetsDataSourceManager:(id)a6 allPhotosAssetsDataSourceManager:(id)a7;
- (PXCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)a3;
- (id)configurationForZoomLevel:(int64_t)a3;
- (id)keyAssetCollectionReferenceInDataSource:(id)a3 zoomLevel:(int64_t)a4 matchingAssetCollectionReference:(id)a5 fromDataSource:(id)a6 zoomLevel:(int64_t)a7;
@end

@implementation PXCuratedLibraryAssetsDataSourceManagerConfiguration

- (id)keyAssetCollectionReferenceInDataSource:(id)a3 zoomLevel:(int64_t)a4 matchingAssetCollectionReference:(id)a5 fromDataSource:(id)a6 zoomLevel:(int64_t)a7
{
  v9 = [a3 objectReferenceNearestToObjectReference:{a5, a4}];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 px_descriptionForAssertionMessage];
      [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:79 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:referenceAssetCollectionReference]", v13, v14}];
    }
  }

  return v9;
}

- (id)configurationForZoomLevel:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryAssetsDataSourceManagerConfiguration configurationForZoomLevel:]", v7}];

  abort();
}

- (PXCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXCuratedLibraryAssetsDataSourceManagerConfiguration;
  v7 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    v8->_enableDays = 1;
  }

  return v8;
}

+ (id)configurationWithPhotoLibrary:(id)a3 yearsAssetsDataSourceManager:(id)a4 monthsAssetsDataSourceManager:(id)a5 daysAssetsDataSourceManager:(id)a6 allPhotosAssetsDataSourceManager:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[_PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration alloc] initWithPhotoLibrary:v15 yearsAssetsDataSourceManager:v14 monthsAssetsDataSourceManager:v13 daysAssetsDataSourceManager:v12 allPhotosAssetsDataSourceManager:v11];

  return v16;
}

+ (id)configurationWithPhotoLibrary:(id)a3 enableDays:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)[_PXPhotoLibraryCuratedLibraryAssetsDataSourceManagerConfiguration alloc] initWithPhotoLibrary:v5];

  [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)v6 setEnableDays:v4];

  return v6;
}

@end