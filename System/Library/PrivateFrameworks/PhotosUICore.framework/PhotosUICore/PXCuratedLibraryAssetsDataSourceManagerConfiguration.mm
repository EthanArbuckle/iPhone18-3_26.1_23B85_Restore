@interface PXCuratedLibraryAssetsDataSourceManagerConfiguration
+ (id)configurationWithPhotoLibrary:(id)library enableDays:(BOOL)days;
+ (id)configurationWithPhotoLibrary:(id)library yearsAssetsDataSourceManager:(id)manager monthsAssetsDataSourceManager:(id)sourceManager daysAssetsDataSourceManager:(id)dataSourceManager allPhotosAssetsDataSourceManager:(id)assetsDataSourceManager;
- (PXCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)library;
- (id)configurationForZoomLevel:(int64_t)level;
- (id)keyAssetCollectionReferenceInDataSource:(id)source zoomLevel:(int64_t)level matchingAssetCollectionReference:(id)reference fromDataSource:(id)dataSource zoomLevel:(int64_t)zoomLevel;
@end

@implementation PXCuratedLibraryAssetsDataSourceManagerConfiguration

- (id)keyAssetCollectionReferenceInDataSource:(id)source zoomLevel:(int64_t)level matchingAssetCollectionReference:(id)reference fromDataSource:(id)dataSource zoomLevel:(int64_t)zoomLevel
{
  v9 = [source objectReferenceNearestToObjectReference:{reference, level}];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:79 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:referenceAssetCollectionReference]", v13, px_descriptionForAssertionMessage}];
    }
  }

  return v9;
}

- (id)configurationForZoomLevel:(int64_t)level
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryAssetsDataSourceManagerConfiguration configurationForZoomLevel:]", v7}];

  abort();
}

- (PXCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXCuratedLibraryAssetsDataSourceManagerConfiguration;
  v7 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
    v8->_enableDays = 1;
  }

  return v8;
}

+ (id)configurationWithPhotoLibrary:(id)library yearsAssetsDataSourceManager:(id)manager monthsAssetsDataSourceManager:(id)sourceManager daysAssetsDataSourceManager:(id)dataSourceManager allPhotosAssetsDataSourceManager:(id)assetsDataSourceManager
{
  assetsDataSourceManagerCopy = assetsDataSourceManager;
  dataSourceManagerCopy = dataSourceManager;
  sourceManagerCopy = sourceManager;
  managerCopy = manager;
  libraryCopy = library;
  v16 = [[_PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration alloc] initWithPhotoLibrary:libraryCopy yearsAssetsDataSourceManager:managerCopy monthsAssetsDataSourceManager:sourceManagerCopy daysAssetsDataSourceManager:dataSourceManagerCopy allPhotosAssetsDataSourceManager:assetsDataSourceManagerCopy];

  return v16;
}

+ (id)configurationWithPhotoLibrary:(id)library enableDays:(BOOL)days
{
  daysCopy = days;
  libraryCopy = library;
  v6 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)[_PXPhotoLibraryCuratedLibraryAssetsDataSourceManagerConfiguration alloc] initWithPhotoLibrary:libraryCopy];

  [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)v6 setEnableDays:daysCopy];

  return v6;
}

@end