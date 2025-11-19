@interface PXMonthCardSectionConfigurator
- (PXMonthCardSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4;
- (id)createCardSpecWithExtendedTraitCollection:(id)a3;
- (void)configureAssetSectionLayout:(id)a3;
@end

@implementation PXMonthCardSectionConfigurator

- (void)configureAssetSectionLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXMonthCardSectionConfigurator;
  v3 = a3;
  [(PXCuratedLibraryCardSectionConfigurator *)&v5 configureAssetSectionLayout:v3];
  v4 = PXLocalizedStringFromTable(@"PXCuratedLibraryMonthsZoomLevelButtonTitle", @"PhotosUICore");
  [v3 setAxLocalizedBaseLabel:{v4, v5.receiver, v5.super_class}];
}

- (id)createCardSpecWithExtendedTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [[PXMonthCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:v3];

  return v4;
}

- (PXMonthCardSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = PXMonthCardSectionConfigurator;
  v8 = [(PXCuratedLibraryCardSectionConfigurator *)&v22 initWithExtendedTraitCollection:v6 assetsSectionLayoutSpec:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(PXCuratedLibraryCardSectionConfigurator *)v8 cardSpec];
    [v10 padding];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = -[PXMonthsAssetsSectionHeaderLayoutSpec initWithExtendedTraitCollection:options:padding:variant:]([PXMonthsAssetsSectionHeaderLayoutSpec alloc], "initWithExtendedTraitCollection:options:padding:variant:", v6, 0, [v7 variant], v12, v14, v16, v18);
    floatingHeaderSpec = v9->_floatingHeaderSpec;
    v9->_floatingHeaderSpec = v19;
  }

  return v9;
}

@end