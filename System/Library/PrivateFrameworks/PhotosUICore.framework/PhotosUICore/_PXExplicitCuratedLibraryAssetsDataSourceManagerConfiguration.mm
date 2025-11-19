@interface _PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration
- (_PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)a3 yearsAssetsDataSourceManager:(id)a4 monthsAssetsDataSourceManager:(id)a5 daysAssetsDataSourceManager:(id)a6 allPhotosAssetsDataSourceManager:(id)a7;
- (id)configurationForZoomLevel:(int64_t)a3;
@end

@implementation _PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration

- (id)configurationForZoomLevel:(int64_t)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__daysAssetsDataSourceManager;
    }

    else
    {
      if (a3 != 4)
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

  switch(a3)
  {
    case 1:
      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__yearsAssetsDataSourceManager;
      goto LABEL_10;
    case 2:
      v6 = &OBJC_IVAR____PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration__monthsAssetsDataSourceManager;
      goto LABEL_10;
    case 0:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:117 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_13:
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:132 description:{@"missing assetsDataSourceManager for zoomLevel %li", a3}];

  v7 = 0;
LABEL_14:
  v9 = [[PXCuratedLibraryZoomLevelDataConfiguration alloc] initWithZoomLevel:a3 assetsDataSourceManager:v7];

  return v9;
}

- (_PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration)initWithPhotoLibrary:(id)a3 yearsAssetsDataSourceManager:(id)a4 monthsAssetsDataSourceManager:(id)a5 daysAssetsDataSourceManager:(id)a6 allPhotosAssetsDataSourceManager:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = _PXExplicitCuratedLibraryAssetsDataSourceManagerConfiguration;
  v17 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)&v20 initWithPhotoLibrary:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_yearsAssetsDataSourceManager, a4);
    objc_storeStrong(&v18->_monthsAssetsDataSourceManager, a5);
    objc_storeStrong(&v18->_daysAssetsDataSourceManager, a6);
    objc_storeStrong(&v18->_allPhotosAssetsDataSourceManager, a7);
  }

  return v18;
}

@end