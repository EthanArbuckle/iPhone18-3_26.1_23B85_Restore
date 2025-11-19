@interface PXCuratedLibraryAssetsSectionConfigurator
+ (id)createSectionConfiguratorForSpec:(id)a3 type:(int64_t)a4;
- (id)headerSpecForHeaderStyle:(int64_t)a3 assetSectionLayout:(id)a4;
- (id)updatedHeaderLayout:(id)a3 withHeaderStyle:(int64_t)a4 forAssetSectionLayout:(id)a5;
@end

@implementation PXCuratedLibraryAssetsSectionConfigurator

+ (id)createSectionConfiguratorForSpec:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (a4 > 3)
  {
    v8 = 0;
  }

  else
  {
    v6 = objc_alloc(*(&off_1E773E118)[a4]);
    v7 = [v5 extendedTraitCollection];
    v8 = [v6 initWithExtendedTraitCollection:v7 assetsSectionLayoutSpec:v5];
  }

  return v8;
}

- (id)updatedHeaderLayout:(id)a3 withHeaderStyle:(int64_t)a4 forAssetSectionLayout:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v11 = v10;
  if ((a4 - 1) >= 2)
  {
    v14 = v10;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    v13 = v11;
    objc_opt_class();
    v14 = v13;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = objc_alloc_init(PXCuratedLibrarySectionHeaderLayout);
    }

    v15 = [(PXCuratedLibraryAssetsSectionConfigurator *)self headerSpecForHeaderStyle:a4 assetSectionLayout:v9];
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setSpec:v15];

    v16 = [v9 assetCollectionReference];
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setAssetCollectionReference:v16];
    -[PXCuratedLibrarySectionHeaderLayout setShowsDebugDescription:](v14, "setShowsDebugDescription:", [v12 showDebugInformationInFloatingHeader]);
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setSafeAreaBehavior:a4 == 1];
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setExternalLeadingButtonConfigurations:0];
  }

  v10 = v14;
  a4 = v10;
LABEL_7:

  return a4;
}

- (id)headerSpecForHeaderStyle:(int64_t)a3 assetSectionLayout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsSectionConfigurator.m" lineNumber:22 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryAssetsSectionConfigurator headerSpecForHeaderStyle:assetSectionLayout:]", v9}];

  abort();
}

@end