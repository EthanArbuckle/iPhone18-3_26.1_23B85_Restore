@interface PXCuratedLibraryLayoutSpec
- (BOOL)shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:(int64_t)a3;
- (PXCuratedLibraryLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
- (UIEdgeInsets)blurredBackgroundEdgeInsets;
- (double)blurredBackgroundInitialOpacityForZoomLevel:(int64_t)a3;
- (double)blurredBackgroundOpacityForZoomLevel:(int64_t)a3;
- (double)defaultInterlayoutSpacingForZoomLevel:(int64_t)a3;
@end

@implementation PXCuratedLibraryLayoutSpec

- (UIEdgeInsets)blurredBackgroundEdgeInsets
{
  top = self->_blurredBackgroundEdgeInsets.top;
  left = self->_blurredBackgroundEdgeInsets.left;
  bottom = self->_blurredBackgroundEdgeInsets.bottom;
  right = self->_blurredBackgroundEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3 != 2)
  {
    return 0;
  }

  if ([(PXCuratedLibraryLayoutSpec *)self sizeClass]== 1)
  {
    return [(PXCuratedLibraryLayoutSpec *)self layoutOrientation]== 2;
  }

  return 0;
}

- (double)blurredBackgroundOpacityForZoomLevel:(int64_t)a3
{
  v6 = [(PXCuratedLibraryLayoutSpec *)self wantsBlurredBackground];
  result = 0.0;
  if (v6)
  {
    if ((a3 - 1) < 2)
    {
      v13 = +[PXCuratedLibrarySettings sharedInstance];
      [v13 blurredBackgroundFinalOpacity];
      v15 = v14;

      result = 0.000001;
      if (v15 >= 0.000001)
      {
        return v15;
      }
    }

    else if ((a3 - 3) >= 2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      if (a3)
      {
        v9 = v8;
        v10 = a2;
        v11 = self;
        v12 = 252;
      }

      else
      {
        v9 = v8;
        v10 = a2;
        v11 = self;
        v12 = 243;
      }

      [v8 handleFailureInMethod:v10 object:v11 file:@"PXCuratedLibraryLayoutSpec.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return result;
}

- (double)blurredBackgroundInitialOpacityForZoomLevel:(int64_t)a3
{
  v6 = 0.0;
  if ([(PXCuratedLibraryLayoutSpec *)self wantsBlurredBackground])
  {
    if ((a3 - 1) < 2)
    {
      v12 = +[PXCuratedLibrarySettings sharedInstance];
      if ([(PXCuratedLibraryLayoutSpec *)self userInterfaceIdiom]== 4)
      {
        [v12 blurredBackgroundInitialOpacityMac];
      }

      else
      {
        [v12 blurredBackgroundInitialOpacity];
      }

      v6 = v13;
    }

    else if ((a3 - 3) >= 2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      if (a3)
      {
        v8 = v7;
        v9 = a2;
        v10 = self;
        v11 = 233;
      }

      else
      {
        v8 = v7;
        v9 = a2;
        v10 = self;
        v11 = 221;
      }

      [v7 handleFailureInMethod:v9 object:v10 file:@"PXCuratedLibraryLayoutSpec.m" lineNumber:v11 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return v6;
}

- (double)defaultInterlayoutSpacingForZoomLevel:(int64_t)a3
{
  result = 0.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v10 = &OBJC_IVAR___PXCuratedLibraryLayoutSpec__spacingBetweenMonths;
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      v10 = &OBJC_IVAR___PXCuratedLibraryLayoutSpec__spacingBetweenDays;
    }

    return *(&self->super.super.isa + *v10);
  }

  if (a3 == 1)
  {
    v10 = &OBJC_IVAR___PXCuratedLibraryLayoutSpec__spacingBetweenYears;
    return *(&self->super.super.isa + *v10);
  }

  if (!a3)
  {
    v14 = v4;
    v15 = v3;
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutSpec.m" lineNumber:196 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return result;
}

- (PXCuratedLibraryLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v8 = a3;
  v54.receiver = self;
  v54.super_class = PXCuratedLibraryLayoutSpec;
  v9 = [(PXCuratedLibraryLayoutSpec *)&v54 initWithExtendedTraitCollection:v8 options:a4];
  v10 = v9;
  if (v9)
  {
    v9->_variant = a5;
    v9->_axis = 1;
    v11 = [(PXCuratedLibraryLayoutSpec *)v9 sizeClass];
    v12 = 36.0;
    if (v11 != 2)
    {
      v12 = 8.0;
    }

    v13 = 34.0;
    if (v11 != 2)
    {
      v13 = 20.0;
    }

    v10->_spacingBetweenSafeAreaTopAndFirstYearCard = v12;
    v10->_spacingBetweenSafeAreaTopAndFirstMonthTitle = v13;
    v10->_spacingBetweenHeaderLastBaselineAndAllPhotosTop = v13;
    v14 = [v8 layoutSizeClass];
    v15 = 12.0;
    if (v14 == 1)
    {
      v15 = 8.0;
    }

    v10->_interbuttonSpacing = v15;
    [(PXFeatureSpec *)v10 spacingBetweenYearCards];
    v10->_spacingBetweenYears = v16;
    v10->_isTopSafeAreaFullyCovered = [(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom]== 4;
    [(PXFeatureSpec *)v10 spacingBetweenMonthCards];
    v10->_estimatedSpacingBetweenMonths = v17;
    v10->_spacingBetweenMonths = *off_1E7722050;
    v18 = +[PXCuratedLibrarySettings sharedInstance];
    [v18 spacingBetweenDays];
    v10->_spacingBetweenDays = v19;

    v20 = [v8 curatedLibraryLayoutStyle];
    v10->_layoutStyle = v20;
    v53 = [v8 curatedLibraryLayoutStyle];
    v21 = v53 == 1;
    v22 = [(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom];
    v23 = [(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom];
    if ([(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom]== 5)
    {
      v24 = [MEMORY[0x1E69DC888] clearColor];
      backgroundColor = v10->_backgroundColor;
      v10->_backgroundColor = v24;

      contentBackgroundColor = v10->_contentBackgroundColor;
      v10->_contentBackgroundColor = 0;

      v27 = [MEMORY[0x1E69DC888] clearColor];
      contentUnavailableBackgroundColor = v10->_contentUnavailableBackgroundColor;
      v10->_contentUnavailableBackgroundColor = v27;
LABEL_26:

LABEL_27:
      v10->_wantsBlurredBackground = v21;
      v10->_wantsBlurredSecondaryToolbarTransition = v21;
      v34 = [v8 userInterfaceIdiom] != 4 && objc_msgSend(v8, "userInterfaceIdiom") != 5;
      v10->_wantsStatusBarGradient = v34;
      v35 = *(off_1E7721FA8 + 1);
      *&v10->_blurredBackgroundEdgeInsets.top = *off_1E7721FA8;
      *&v10->_blurredBackgroundEdgeInsets.bottom = v35;
      v36 = [[PXCuratedLibraryYearsTopHeaderSpec alloc] initWithExtendedTraitCollection:v8 options:a4 variant:a5];
      yearsTopHeaderSpec = v10->_yearsTopHeaderSpec;
      v10->_yearsTopHeaderSpec = &v36->super;

      v38 = [[PXCuratedLibraryMonthsTopHeaderSpec alloc] initWithExtendedTraitCollection:v8 options:a4 variant:a5];
      monthsTopHeaderSpec = v10->_monthsTopHeaderSpec;
      v10->_monthsTopHeaderSpec = &v38->super;

      v40 = [[PXCuratedLibraryDaysTopHeaderSpec alloc] initWithExtendedTraitCollection:v8 options:a4 variant:a5];
      daysTopHeaderSpec = v10->_daysTopHeaderSpec;
      v10->_daysTopHeaderSpec = &v40->super;

      v42 = [[PXAllPhotosFloatingHeaderSpec alloc] initWithExtendedTraitCollection:v8 options:a4 variant:a5];
      allPhotosFloatingHeaderSpec = v10->_allPhotosFloatingHeaderSpec;
      v10->_allPhotosFloatingHeaderSpec = &v42->super;

      v44 = [[off_1E77214C8 alloc] initWithExtendedTraitCollection:v8 options:a4 variant:a5 itemCornerRadius:0 zoomableSpec:0.0];
      sectionLayoutSpec = v10->_sectionLayoutSpec;
      v10->_sectionLayoutSpec = v44;

      [(PXAssetsSectionLayoutSpec *)v10->_sectionLayoutSpec setConfiguratorSource:v10];
      if ([(PXCuratedLibraryLayoutSpec *)v10 sizeClass]!= 2 && (MEMORY[0x1A590D320]() & 1) == 0 && [(PXCuratedLibraryLayoutSpec *)v10 sizeSubclass]== 1)
      {
        [(PXCuratedLibraryLayoutSpec *)v10 layoutOrientation];
      }

      v46 = [[PXYearCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:v8 options:a4];
      v47 = [[PXMonthCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:v8 options:a4];
      if (v23 == 2)
      {
        v48 = [v8 windowOrientation];
      }

      else
      {
        v48 = [(PXCuratedLibraryLayoutSpec *)v10 layoutOrientation];
      }

      v49 = v48;
      v50 = objc_alloc_init(PXYearsLayoutMetrics);
      yearsLayoutMetrics = v10->_yearsLayoutMetrics;
      v10->_yearsLayoutMetrics = v50;

      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setSizeClass:[(PXCuratedLibraryLayoutSpec *)v10 sizeClass]];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setOrientation:v49];
      [(PXFeatureSpec *)v46 spacingBetweenYearCards];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setInteritemSpacing:?];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v46 aspectRatio];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setDefaultItemAspectRatio:?];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setLayoutStyle:v20];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v46 horizontalInsets];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v47 horizontalInsets];
      PXEdgeInsetsMake();
    }

    if (v22 != 4)
    {
      if (!MEMORY[0x1A590D320]())
      {
        if (v53 == 1)
        {
          [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] systemBackgroundColor];
        }
        v32 = ;
        objc_storeStrong(&v10->_backgroundColor, v32);

        if (v53 == 1)
        {
          v33 = [MEMORY[0x1E69DC888] systemBackgroundColor];
        }

        else
        {
          v33 = 0;
        }

        objc_storeStrong(&v10->_contentBackgroundColor, v33);
        if (v53 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v29 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v30 = v10->_backgroundColor;
      v10->_backgroundColor = v29;

      v31 = v10->_contentBackgroundColor;
      v10->_contentBackgroundColor = 0;
    }

    if (v53 != 1)
    {
LABEL_24:
      contentUnavailableBackgroundColor = v10->_backgroundColor;
LABEL_25:
      objc_storeStrong(&v10->_contentUnavailableBackgroundColor, contentUnavailableBackgroundColor);
      if (v53 != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_23:
    contentUnavailableBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    goto LABEL_25;
  }

  return 0;
}

@end