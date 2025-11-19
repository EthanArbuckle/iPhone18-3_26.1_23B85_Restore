@interface PXMonthCardSectionBodyLayoutSpec
- (PXMonthCardSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (double)_cardHeightWithExtendedTraitCollection:(id)a3;
- (double)interitemSpacing;
- (void)_configureDynamicAspectRatioWithExtendedTraitCollection:(id)a3;
@end

@implementation PXMonthCardSectionBodyLayoutSpec

- (double)interitemSpacing
{
  if (self->_layoutStyle == 1 && [(PXMonthCardSectionBodyLayoutSpec *)self sizeClass]!= 2)
  {
    return 6.0;
  }

  [(PXFeatureSpec *)self spacingBetweenMonthCards];
  return result;
}

- (double)_cardHeightWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  [(PXMonthCardSectionBodyLayoutSpec *)self layoutReferenceSize];
  v6 = v5;
  v8 = v7;
  [(PXMonthCardSectionBodyLayoutSpec *)self safeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [[PXExploreLayoutMetrics alloc] initWithSpec:self];
  [(PXLayoutMetrics *)v17 setReferenceSize:v6, v8];
  [(PXExploreLayoutMetrics *)v17 setSafeAreaInsets:v10, v12, v14, v16];
  v18 = [[PXExploreLayoutGenerator alloc] initWithMetrics:v17];
  [(PXExploreLayoutGenerator *)v18 setItemCount:1];
  [(PXExploreLayoutGenerator *)v18 setItemLayoutInfoBlock:&__block_literal_global_96587];
  [(PXExploreLayoutGenerator *)v18 size];
  v20 = v19;
  if ([v4 layoutSizeClass] == 2)
  {
    v21 = [[PXCuratedLibraryStyleGuide alloc] initWithExtendedTraitCollection:v4];
    [(PXCuratedLibraryStyleGuide *)v21 secondaryToolbarContentInsets];
    if (v22 >= v10)
    {
      v10 = v22;
    }
  }

  v23 = [[PXCuratedLibraryChapterHeaderLayoutSpec alloc] initWithExtendedTraitCollection:v4];
  [(PXCuratedLibraryChapterHeaderLayoutSpec *)v23 titleHeight];
  v25 = v10 + 11.0 + v24;
  [(PXCuratedLibraryChapterHeaderLayoutSpec *)v23 spacingBetweenTitleBottomAndNextCardTop];
  v27 = v8 - v14 + (v25 + v26) * -2.0;
  if (v20 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v20;
  }

  return v28;
}

id __75__PXMonthCardSectionBodyLayoutSpec__cardHeightWithExtendedTraitCollection___block_invoke()
{
  v0 = [[off_1E7721790 alloc] initWithSize:1.0 weight:{1.0, 1.0}];

  return v0;
}

- (void)_configureDynamicAspectRatioWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  [(PXMonthCardSectionBodyLayoutSpec *)self layoutReferenceSize];
  v6 = v5;
  [(PXCuratedLibraryCardSectionBodyLayoutSpec *)self horizontalMargin];
  v8 = v6 + v7 * -2.0;
  [(PXMonthCardSectionBodyLayoutSpec *)self _cardHeightWithExtendedTraitCollection:v4];
  v10 = v9;

  [(PXCuratedLibraryCardSectionBodyLayoutSpec *)self setAspectRatio:v8 / v10];
}

- (PXMonthCardSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = PXMonthCardSectionBodyLayoutSpec;
  v7 = [(PXCuratedLibraryCardSectionBodyLayoutSpec *)&v22 initWithExtendedTraitCollection:v6 options:a4];
  if (v7)
  {
    v8 = +[PXCuratedLibrarySettings sharedInstance];
    if ([(PXMonthCardSectionBodyLayoutSpec *)v7 userInterfaceIdiom]== 4)
    {
      [(PXMonthCardSectionBodyLayoutSpec *)v7 contentGuideInsetsForScrollAxis:1];
      v10 = v9;
LABEL_4:
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v7 setHorizontalMargin:v10];
      [(PXMonthCardSectionBodyLayoutSpec *)v7 _configureDynamicAspectRatioWithExtendedTraitCollection:v6];
LABEL_8:
      [v8 cornerRadiusForMonths];
      *&v12 = v12;
      LODWORD(v13) = LODWORD(v12);
      LODWORD(v14) = LODWORD(v12);
      LODWORD(v15) = LODWORD(v12);
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v7 setCornerRadius:v12, v13, v14, v15];
      v7->_layoutStyle = [v6 curatedLibraryLayoutStyle];
      [(PXFeatureSpec *)v7 spacingBetweenMonthCards];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v7 setDistanceToNextLayout:?];

      goto LABEL_9;
    }

    if ([(PXMonthCardSectionBodyLayoutSpec *)v7 userInterfaceIdiom]== 5)
    {
      [v8 lateralMarginMonths];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v7 setHorizontalMargin:?];
      v11 = 1.5;
    }

    else
    {
      if ([(PXMonthCardSectionBodyLayoutSpec *)v7 sizeClass]== 2)
      {
        [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v7 horizontalMargin];
        v18 = v17;
        if ([v6 windowOrientation] == 1)
        {
          v18 = v18 + v18;
        }

        [(PXMonthCardSectionBodyLayoutSpec *)v7 layoutReferenceSize];
        if (v18 > 104.0 || v19 < 1112.0)
        {
          v10 = v18;
        }

        else
        {
          v10 = 104.0;
        }

        goto LABEL_4;
      }

      if ([v6 layoutOrientation] == 2)
      {
        [v6 layoutReferenceSize];
        v10 = (v21 + -560.0) * 0.5;
        if (v10 < 104.0)
        {
          v10 = 104.0;
        }

        goto LABEL_4;
      }

      [v8 aspectRatioForCompactPortraitMonths];
    }

    [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v7 setAspectRatio:v11];
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end