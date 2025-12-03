@interface _PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration
- (_PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)library yearsAssetsDataSourceManager:(id)manager monthsAssetsDataSourceManager:(id)sourceManager daysAssetsDataSourceManager:(id)dataSourceManager allPhotosAssetsDataSourceManager:(id)assetsDataSourceManager;
- (id)configurationForZoomLevel:(int64_t)level;
@end

@implementation _PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration

- (id)configurationForZoomLevel:(int64_t)level
{
  if (level > 2)
  {
    if (level == 3)
    {
      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__daysAssetsDataSourceManager;
    }

    else
    {
      if (level != 4)
      {
        goto LABEL_13;
      }

      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__allPhotosAssetsDataSourceManager;
    }

LABEL_10:
    v7 = *(&self->super.super.isa + *v6);
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(level)
  {
    case 1:
      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__yearsAssetsDataSourceManager;
      goto LABEL_10;
    case 2:
      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__monthsAssetsDataSourceManager;
      goto LABEL_10;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:117 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_13:
  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:132 description:{@"missing assetsDataSourceManager for zoomLevel %li", level}];

  v7 = 0;
LABEL_14:
  v9 = [[PXCuratedLibraryZoomLevelDataConfiguration alloc] initWithZoomLevel:level assetsDataSourceManager:v7];

  return v9;
}

- (_PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)library yearsAssetsDataSourceManager:(id)manager monthsAssetsDataSourceManager:(id)sourceManager daysAssetsDataSourceManager:(id)dataSourceManager allPhotosAssetsDataSourceManager:(id)assetsDataSourceManager
{
  managerCopy = manager;
  sourceManagerCopy = sourceManager;
  dataSourceManagerCopy = dataSourceManager;
  assetsDataSourceManagerCopy = assetsDataSourceManager;
  v20.receiver = self;
  v20.super_class = _PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration;
  v17 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)&v20 initWithPhotoLibrary:library];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_yearsAssetsDataSourceManager, manager);
    objc_storeStrong(&v18->_monthsAssetsDataSourceManager, sourceManager);
    objc_storeStrong(&v18->_daysAssetsDataSourceManager, dataSourceManager);
    objc_storeStrong(&v18->_allPhotosAssetsDataSourceManager, assetsDataSourceManager);
  }

  return v18;
}

@end