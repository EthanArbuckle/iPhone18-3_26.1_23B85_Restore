@interface PXYearAssetsSectionConfigurator
- (PXYearAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4;
- (id)createCardSpecWithExtendedTraitCollection:(id)a3;
- (id)headerSpecForHeaderStyle:(int64_t)a3 assetSectionLayout:(id)a4;
- (void)configureAssetSectionLayout:(id)a3;
@end

@implementation PXYearAssetsSectionConfigurator

- (id)headerSpecForHeaderStyle:(int64_t)a3 assetSectionLayout:(id)a4
{
  v5 = a4;
  v6 = &OBJC_IVAR___PXYearAssetsSectionConfigurator__skimmingHeaderSpec;
  if (([v5 showsSkimmingInteraction] & 1) == 0 && !objc_msgSend(v5, "showsSkimmingSlideshow"))
  {
    v6 = &OBJC_IVAR___PXYearAssetsSectionConfigurator__normalHeaderSpec;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = v7;

  return v7;
}

- (void)configureAssetSectionLayout:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PXYearAssetsSectionConfigurator;
  [(PXCuratedLibraryCardSectionConfigurator *)&v14 configureAssetSectionLayout:v5];
  v6 = [v5 headerLayout];
  v7 = [v6 isFloating];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 headerLayout];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v8 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PXYearAssetsSectionConfigurator.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sectionLayout.headerLayout", v12, v13}];
      }
    }

    [v8 setEllipsisButtonActionPerformer:0];
  }

  v9 = PXLocalizedStringFromTable(@"PXCuratedLibraryYearsZoomLevelButtonTitle", @"PhotosUICore");
  [v5 setAxLocalizedBaseLabel:v9];
}

- (id)createCardSpecWithExtendedTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [[PXYearCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:v3];

  return v4;
}

- (PXYearAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PXYearAssetsSectionConfigurator;
  v8 = [(PXCuratedLibraryCardSectionConfigurator *)&v24 initWithExtendedTraitCollection:v6 assetsSectionLayoutSpec:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(PXCuratedLibraryCardSectionConfigurator *)v8 cardSpec];
    [v10 padding];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = -[PXYearAssetsSkimmingSectionHeaderLayoutSpec initWithExtendedTraitCollection:options:padding:variant:]([PXYearAssetsSkimmingSectionHeaderLayoutSpec alloc], "initWithExtendedTraitCollection:options:padding:variant:", v6, 0, [v7 variant], v12, v14, v16, v18);
    skimmingHeaderSpec = v9->_skimmingHeaderSpec;
    v9->_skimmingHeaderSpec = v19;

    v21 = -[PXYearAssetsSectionHeaderLayoutSpec initWithExtendedTraitCollection:options:padding:variant:]([PXYearAssetsSectionHeaderLayoutSpec alloc], "initWithExtendedTraitCollection:options:padding:variant:", v6, 0, [v7 variant], v12, v14, v16, v18);
    normalHeaderSpec = v9->_normalHeaderSpec;
    v9->_normalHeaderSpec = v21;
  }

  return v9;
}

@end