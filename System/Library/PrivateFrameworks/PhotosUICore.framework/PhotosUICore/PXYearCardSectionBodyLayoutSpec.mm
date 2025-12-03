@interface PXYearCardSectionBodyLayoutSpec
- (PXYearCardSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
@end

@implementation PXYearCardSectionBodyLayoutSpec

- (PXYearCardSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = PXYearCardSectionBodyLayoutSpec;
  v7 = [(PXCuratedLibraryCardSectionBodyLayoutSpec *)&v16 initWithExtendedTraitCollection:collectionCopy options:options];
  v8 = v7;
  if (v7)
  {
    [(PXYearCardSectionBodyLayoutSpec *)v7 setMultiColumnAspectRatio:1.0];
    v9 = +[PXCuratedLibrarySettings sharedInstance];
    if ([collectionCopy layoutSizeClass] == 2)
    {
      [v9 aspectRatioForRegularYears];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v8 setAspectRatio:?];
      if ([collectionCopy userInterfaceIdiom] == 4)
      {
        [(PXYearCardSectionBodyLayoutSpec *)v8 contentGuideInsetsForScrollAxis:1];
        [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v8 setHorizontalMargin:v10];
      }
    }

    else if ([collectionCopy layoutOrientation] == 2)
    {
      [v9 aspectRatioForCompactLandscapeYears];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v8 setAspectRatio:?];
      [(PXYearCardSectionBodyLayoutSpec *)v8 setMultiColumnAspectRatio:1.5];
    }

    else
    {
      [v9 aspectRatioForCompactPortraitYears];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v8 setAspectRatio:?];
    }

    [v9 cornerRadiusForYears];
    *&v11 = v11;
    LODWORD(v12) = LODWORD(v11);
    LODWORD(v13) = LODWORD(v11);
    LODWORD(v14) = LODWORD(v11);
    [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v8 setCornerRadius:v11, v12, v13, v14];
  }

  return v8;
}

@end