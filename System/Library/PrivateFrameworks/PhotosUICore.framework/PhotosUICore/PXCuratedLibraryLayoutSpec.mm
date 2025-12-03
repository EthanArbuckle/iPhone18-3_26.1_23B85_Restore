@interface PXCuratedLibraryLayoutSpec
- (BOOL)shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:(int64_t)level;
- (PXCuratedLibraryLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant;
- (UIEdgeInsets)blurredBackgroundEdgeInsets;
- (double)blurredBackgroundInitialOpacityForZoomLevel:(int64_t)level;
- (double)blurredBackgroundOpacityForZoomLevel:(int64_t)level;
- (double)defaultInterlayoutSpacingForZoomLevel:(int64_t)level;
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

- (BOOL)shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:(int64_t)level
{
  if (level == 1)
  {
    return 1;
  }

  if (level != 2)
  {
    return 0;
  }

  if ([(PXCuratedLibraryLayoutSpec *)self sizeClass]== 1)
  {
    return [(PXCuratedLibraryLayoutSpec *)self layoutOrientation]== 2;
  }

  return 0;
}

- (double)blurredBackgroundOpacityForZoomLevel:(int64_t)level
{
  wantsBlurredBackground = [(PXCuratedLibraryLayoutSpec *)self wantsBlurredBackground];
  result = 0.0;
  if (wantsBlurredBackground)
  {
    if ((level - 1) < 2)
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

    else if ((level - 3) >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      if (level)
      {
        v9 = currentHandler;
        v10 = a2;
        selfCopy2 = self;
        v12 = 252;
      }

      else
      {
        v9 = currentHandler;
        v10 = a2;
        selfCopy2 = self;
        v12 = 243;
      }

      [currentHandler handleFailureInMethod:v10 object:selfCopy2 file:@"PXCuratedLibraryLayoutSpec.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return result;
}

- (double)blurredBackgroundInitialOpacityForZoomLevel:(int64_t)level
{
  v6 = 0.0;
  if ([(PXCuratedLibraryLayoutSpec *)self wantsBlurredBackground])
  {
    if ((level - 1) < 2)
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

    else if ((level - 3) >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      if (level)
      {
        v8 = currentHandler;
        v9 = a2;
        selfCopy2 = self;
        v11 = 233;
      }

      else
      {
        v8 = currentHandler;
        v9 = a2;
        selfCopy2 = self;
        v11 = 221;
      }

      [currentHandler handleFailureInMethod:v9 object:selfCopy2 file:@"PXCuratedLibraryLayoutSpec.m" lineNumber:v11 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return v6;
}

- (double)defaultInterlayoutSpacingForZoomLevel:(int64_t)level
{
  result = 0.0;
  if (level > 1)
  {
    if (level == 2)
    {
      v10 = &OBJC_IVAR___PXCuratedLibraryLayoutSpec__spacingBetweenMonths;
    }

    else
    {
      if (level != 3)
      {
        return result;
      }

      v10 = &OBJC_IVAR___PXCuratedLibraryLayoutSpec__spacingBetweenDays;
    }

    return *(&self->super.super.isa + *v10);
  }

  if (level == 1)
  {
    v10 = &OBJC_IVAR___PXCuratedLibraryLayoutSpec__spacingBetweenYears;
    return *(&self->super.super.isa + *v10);
  }

  if (!level)
  {
    v14 = v4;
    v15 = v3;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutSpec.m" lineNumber:196 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return result;
}

- (PXCuratedLibraryLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant
{
  collectionCopy = collection;
  v54.receiver = self;
  v54.super_class = PXCuratedLibraryLayoutSpec;
  v9 = [(PXCuratedLibraryLayoutSpec *)&v54 initWithExtendedTraitCollection:collectionCopy options:options];
  v10 = v9;
  if (v9)
  {
    v9->_variant = variant;
    v9->_axis = 1;
    sizeClass = [(PXCuratedLibraryLayoutSpec *)v9 sizeClass];
    v12 = 36.0;
    if (sizeClass != 2)
    {
      v12 = 8.0;
    }

    v13 = 34.0;
    if (sizeClass != 2)
    {
      v13 = 20.0;
    }

    v10->_spacingBetweenSafeAreaTopAndFirstYearCard = v12;
    v10->_spacingBetweenSafeAreaTopAndFirstMonthTitle = v13;
    v10->_spacingBetweenHeaderLastBaselineAndAllPhotosTop = v13;
    layoutSizeClass = [collectionCopy layoutSizeClass];
    v15 = 12.0;
    if (layoutSizeClass == 1)
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

    curatedLibraryLayoutStyle = [collectionCopy curatedLibraryLayoutStyle];
    v10->_layoutStyle = curatedLibraryLayoutStyle;
    curatedLibraryLayoutStyle2 = [collectionCopy curatedLibraryLayoutStyle];
    v21 = curatedLibraryLayoutStyle2 == 1;
    userInterfaceIdiom = [(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom];
    userInterfaceIdiom2 = [(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom];
    if ([(PXCuratedLibraryLayoutSpec *)v10 userInterfaceIdiom]== 5)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      backgroundColor = v10->_backgroundColor;
      v10->_backgroundColor = clearColor;

      contentBackgroundColor = v10->_contentBackgroundColor;
      v10->_contentBackgroundColor = 0;

      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      contentUnavailableBackgroundColor = v10->_contentUnavailableBackgroundColor;
      v10->_contentUnavailableBackgroundColor = clearColor2;
LABEL_26:

LABEL_27:
      v10->_wantsBlurredBackground = v21;
      v10->_wantsBlurredSecondaryToolbarTransition = v21;
      v34 = [collectionCopy userInterfaceIdiom] != 4 && objc_msgSend(collectionCopy, "userInterfaceIdiom") != 5;
      v10->_wantsStatusBarGradient = v34;
      v35 = *(off_1E7721FA8 + 1);
      *&v10->_blurredBackgroundEdgeInsets.top = *off_1E7721FA8;
      *&v10->_blurredBackgroundEdgeInsets.bottom = v35;
      v36 = [[PXCuratedLibraryYearsTopHeaderSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options variant:variant];
      yearsTopHeaderSpec = v10->_yearsTopHeaderSpec;
      v10->_yearsTopHeaderSpec = &v36->super;

      v38 = [[PXCuratedLibraryMonthsTopHeaderSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options variant:variant];
      monthsTopHeaderSpec = v10->_monthsTopHeaderSpec;
      v10->_monthsTopHeaderSpec = &v38->super;

      v40 = [[PXCuratedLibraryDaysTopHeaderSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options variant:variant];
      daysTopHeaderSpec = v10->_daysTopHeaderSpec;
      v10->_daysTopHeaderSpec = &v40->super;

      v42 = [[PXAllPhotosFloatingHeaderSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options variant:variant];
      allPhotosFloatingHeaderSpec = v10->_allPhotosFloatingHeaderSpec;
      v10->_allPhotosFloatingHeaderSpec = &v42->super;

      v44 = [[off_1E77214C8 alloc] initWithExtendedTraitCollection:collectionCopy options:options variant:variant itemCornerRadius:0 zoomableSpec:0.0];
      sectionLayoutSpec = v10->_sectionLayoutSpec;
      v10->_sectionLayoutSpec = v44;

      [(PXAssetsSectionLayoutSpec *)v10->_sectionLayoutSpec setConfiguratorSource:v10];
      if ([(PXCuratedLibraryLayoutSpec *)v10 sizeClass]!= 2 && (MEMORY[0x1A590D320]() & 1) == 0 && [(PXCuratedLibraryLayoutSpec *)v10 sizeSubclass]== 1)
      {
        [(PXCuratedLibraryLayoutSpec *)v10 layoutOrientation];
      }

      v46 = [[PXYearCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options];
      v47 = [[PXMonthCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options];
      if (userInterfaceIdiom2 == 2)
      {
        windowOrientation = [collectionCopy windowOrientation];
      }

      else
      {
        windowOrientation = [(PXCuratedLibraryLayoutSpec *)v10 layoutOrientation];
      }

      v49 = windowOrientation;
      v50 = objc_alloc_init(PXYearsLayoutMetrics);
      yearsLayoutMetrics = v10->_yearsLayoutMetrics;
      v10->_yearsLayoutMetrics = v50;

      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setSizeClass:[(PXCuratedLibraryLayoutSpec *)v10 sizeClass]];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setOrientation:v49];
      [(PXFeatureSpec *)v46 spacingBetweenYearCards];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setInteritemSpacing:?];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v46 aspectRatio];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setDefaultItemAspectRatio:?];
      [(PXYearsLayoutMetrics *)v10->_yearsLayoutMetrics setLayoutStyle:curatedLibraryLayoutStyle];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v46 horizontalInsets];
      [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v47 horizontalInsets];
      PXEdgeInsetsMake();
    }

    if (userInterfaceIdiom != 4)
    {
      if (!MEMORY[0x1A590D320]())
      {
        if (curatedLibraryLayoutStyle2 == 1)
        {
          [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] systemBackgroundColor];
        }
        v32 = ;
        objc_storeStrong(&v10->_backgroundColor, v32);

        if (curatedLibraryLayoutStyle2 == 1)
        {
          systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
        }

        else
        {
          systemBackgroundColor = 0;
        }

        objc_storeStrong(&v10->_contentBackgroundColor, systemBackgroundColor);
        if (curatedLibraryLayoutStyle2 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v30 = v10->_backgroundColor;
      v10->_backgroundColor = systemBackgroundColor2;

      v31 = v10->_contentBackgroundColor;
      v10->_contentBackgroundColor = 0;
    }

    if (curatedLibraryLayoutStyle2 != 1)
    {
LABEL_24:
      contentUnavailableBackgroundColor = v10->_backgroundColor;
LABEL_25:
      objc_storeStrong(&v10->_contentUnavailableBackgroundColor, contentUnavailableBackgroundColor);
      if (curatedLibraryLayoutStyle2 != 1)
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