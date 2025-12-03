@interface PXYearAssetsSectionConfigurator
- (PXYearAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec;
- (id)createCardSpecWithExtendedTraitCollection:(id)collection;
- (id)headerSpecForHeaderStyle:(int64_t)style assetSectionLayout:(id)layout;
- (void)configureAssetSectionLayout:(id)layout;
@end

@implementation PXYearAssetsSectionConfigurator

- (id)headerSpecForHeaderStyle:(int64_t)style assetSectionLayout:(id)layout
{
  layoutCopy = layout;
  v6 = &OBJC_IVAR___PXYearAssetsSectionConfigurator__skimmingHeaderSpec;
  if (([layoutCopy showsSkimmingInteraction] & 1) == 0 && !objc_msgSend(layoutCopy, "showsSkimmingSlideshow"))
  {
    v6 = &OBJC_IVAR___PXYearAssetsSectionConfigurator__normalHeaderSpec;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = v7;

  return v7;
}

- (void)configureAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = PXYearAssetsSectionConfigurator;
  [(PXCuratedLibraryCardSectionConfigurator *)&v14 configureAssetSectionLayout:layoutCopy];
  headerLayout = [layoutCopy headerLayout];
  isFloating = [headerLayout isFloating];

  if ((isFloating & 1) == 0)
  {
    headerLayout2 = [layoutCopy headerLayout];
    if (headerLayout2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        px_descriptionForAssertionMessage = [headerLayout2 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXYearAssetsSectionConfigurator.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sectionLayout.headerLayout", v12, px_descriptionForAssertionMessage}];
      }
    }

    [headerLayout2 setEllipsisButtonActionPerformer:0];
  }

  v9 = PXLocalizedStringFromTable(@"PXCuratedLibraryYearsZoomLevelButtonTitle", @"PhotosUICore");
  [layoutCopy setAxLocalizedBaseLabel:v9];
}

- (id)createCardSpecWithExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [[PXYearCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy];

  return v4;
}

- (PXYearAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec
{
  collectionCopy = collection;
  specCopy = spec;
  v24.receiver = self;
  v24.super_class = PXYearAssetsSectionConfigurator;
  v8 = [(PXCuratedLibraryCardSectionConfigurator *)&v24 initWithExtendedTraitCollection:collectionCopy assetsSectionLayoutSpec:specCopy];
  v9 = v8;
  if (v8)
  {
    cardSpec = [(PXCuratedLibraryCardSectionConfigurator *)v8 cardSpec];
    [cardSpec padding];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = -[PXYearAssetsSkimmingSectionHeaderLayoutSpec initWithExtendedTraitCollection:options:padding:variant:]([PXYearAssetsSkimmingSectionHeaderLayoutSpec alloc], "initWithExtendedTraitCollection:options:padding:variant:", collectionCopy, 0, [specCopy variant], v12, v14, v16, v18);
    skimmingHeaderSpec = v9->_skimmingHeaderSpec;
    v9->_skimmingHeaderSpec = v19;

    v21 = -[PXYearAssetsSectionHeaderLayoutSpec initWithExtendedTraitCollection:options:padding:variant:]([PXYearAssetsSectionHeaderLayoutSpec alloc], "initWithExtendedTraitCollection:options:padding:variant:", collectionCopy, 0, [specCopy variant], v12, v14, v16, v18);
    normalHeaderSpec = v9->_normalHeaderSpec;
    v9->_normalHeaderSpec = v21;
  }

  return v9;
}

@end