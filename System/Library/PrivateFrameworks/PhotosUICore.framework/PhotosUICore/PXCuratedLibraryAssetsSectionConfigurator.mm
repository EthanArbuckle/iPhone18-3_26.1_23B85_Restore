@interface PXCuratedLibraryAssetsSectionConfigurator
+ (id)createSectionConfiguratorForSpec:(id)spec type:(int64_t)type;
- (id)headerSpecForHeaderStyle:(int64_t)style assetSectionLayout:(id)layout;
- (id)updatedHeaderLayout:(id)layout withHeaderStyle:(int64_t)style forAssetSectionLayout:(id)sectionLayout;
@end

@implementation PXCuratedLibraryAssetsSectionConfigurator

+ (id)createSectionConfiguratorForSpec:(id)spec type:(int64_t)type
{
  specCopy = spec;
  if (type > 3)
  {
    v8 = 0;
  }

  else
  {
    v6 = objc_alloc(*(&off_1E773E118)[type]);
    extendedTraitCollection = [specCopy extendedTraitCollection];
    v8 = [v6 initWithExtendedTraitCollection:extendedTraitCollection assetsSectionLayoutSpec:specCopy];
  }

  return v8;
}

- (id)updatedHeaderLayout:(id)layout withHeaderStyle:(int64_t)style forAssetSectionLayout:(id)sectionLayout
{
  layoutCopy = layout;
  sectionLayoutCopy = sectionLayout;
  v10 = layoutCopy;
  v11 = v10;
  if ((style - 1) >= 2)
  {
    v14 = v10;
    if (!style)
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

    v15 = [(PXCuratedLibraryAssetsSectionConfigurator *)self headerSpecForHeaderStyle:style assetSectionLayout:sectionLayoutCopy];
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setSpec:v15];

    assetCollectionReference = [sectionLayoutCopy assetCollectionReference];
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setAssetCollectionReference:assetCollectionReference];
    -[PXCuratedLibrarySectionHeaderLayout setShowsDebugDescription:](v14, "setShowsDebugDescription:", [v12 showDebugInformationInFloatingHeader]);
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setSafeAreaBehavior:style == 1];
    [(PXCuratedLibrarySectionHeaderLayout *)v14 setExternalLeadingButtonConfigurations:0];
  }

  v10 = v14;
  style = v10;
LABEL_7:

  return style;
}

- (id)headerSpecForHeaderStyle:(int64_t)style assetSectionLayout:(id)layout
{
  layoutCopy = layout;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsSectionConfigurator.m" lineNumber:22 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryAssetsSectionConfigurator headerSpecForHeaderStyle:assetSectionLayout:]", v9}];

  abort();
}

@end