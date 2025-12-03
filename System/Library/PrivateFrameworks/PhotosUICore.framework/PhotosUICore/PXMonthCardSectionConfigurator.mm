@interface PXMonthCardSectionConfigurator
- (PXMonthCardSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec;
- (id)createCardSpecWithExtendedTraitCollection:(id)collection;
- (void)configureAssetSectionLayout:(id)layout;
@end

@implementation PXMonthCardSectionConfigurator

- (void)configureAssetSectionLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = PXMonthCardSectionConfigurator;
  layoutCopy = layout;
  [(PXCuratedLibraryCardSectionConfigurator *)&v5 configureAssetSectionLayout:layoutCopy];
  v4 = PXLocalizedStringFromTable(@"PXCuratedLibraryMonthsZoomLevelButtonTitle", @"PhotosUICore");
  [layoutCopy setAxLocalizedBaseLabel:{v4, v5.receiver, v5.super_class}];
}

- (id)createCardSpecWithExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [[PXMonthCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy];

  return v4;
}

- (PXMonthCardSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec
{
  collectionCopy = collection;
  specCopy = spec;
  v22.receiver = self;
  v22.super_class = PXMonthCardSectionConfigurator;
  v8 = [(PXCuratedLibraryCardSectionConfigurator *)&v22 initWithExtendedTraitCollection:collectionCopy assetsSectionLayoutSpec:specCopy];
  v9 = v8;
  if (v8)
  {
    cardSpec = [(PXCuratedLibraryCardSectionConfigurator *)v8 cardSpec];
    [cardSpec padding];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = -[PXMonthsAssetsSectionHeaderLayoutSpec initWithExtendedTraitCollection:options:padding:variant:]([PXMonthsAssetsSectionHeaderLayoutSpec alloc], "initWithExtendedTraitCollection:options:padding:variant:", collectionCopy, 0, [specCopy variant], v12, v14, v16, v18);
    floatingHeaderSpec = v9->_floatingHeaderSpec;
    v9->_floatingHeaderSpec = v19;
  }

  return v9;
}

@end