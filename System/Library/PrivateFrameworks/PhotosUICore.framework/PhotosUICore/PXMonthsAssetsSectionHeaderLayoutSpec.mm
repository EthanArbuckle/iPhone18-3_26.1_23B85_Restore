@interface PXMonthsAssetsSectionHeaderLayoutSpec
- (PXMonthsAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options padding:(UIEdgeInsets)padding variant:(int64_t)variant;
- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)padding;
@end

@implementation PXMonthsAssetsSectionHeaderLayoutSpec

- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)padding
{
  v18.receiver = self;
  v18.super_class = PXMonthsAssetsSectionHeaderLayoutSpec;
  [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v18 adjustedContentPadding:padding.top, padding.left, padding.bottom, padding.right];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)self ellipsisButtonSpecialTreatment])
  {
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    if ([v12 alignActionButtonsTrailingEdges])
    {
      layoutOrientation = [(PXMonthsAssetsSectionHeaderLayoutSpec *)self layoutOrientation];

      if (layoutOrientation == 1)
      {
        v11 = v11 + -14.0;
      }
    }

    else
    {
    }
  }

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (PXMonthsAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options padding:(UIEdgeInsets)padding variant:(int64_t)variant
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  collectionCopy = collection;
  v54.receiver = self;
  v54.super_class = PXMonthsAssetsSectionHeaderLayoutSpec;
  v14 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v54 initWithExtendedTraitCollection:collectionCopy options:options variant:variant];
  if (v14)
  {
    v15 = +[PXCuratedLibrarySettings sharedInstance];
    curatedLibraryLayoutStyle = [collectionCopy curatedLibraryLayoutStyle];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setEllipsisButtonSpecialTreatment:variant != 0];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setCanShowEllipsisButton:curatedLibraryLayoutStyle != 1];
    [(PXMonthsAssetsSectionHeaderLayoutSpec *)v14 adjustedContentPadding:top, left, bottom, right];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setPadding:?];
    LODWORD(v17) = 10.0;
    LODWORD(v18) = 10.0;
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setCornerRadius:v17, v18, 0.0, 0.0];
    v19 = [off_1E7721910 px_headerTitleSubtitleLabelSpecForZoomLevel:2 featureSpec:v14];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTitleSubtitleLabelSpec:v19];

    titleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v21 = [titleSubtitleLabelSpec copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugInterestingTitleSubtitleLabelSpec:v21];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    debugInterestingTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec = [debugInterestingTitleSubtitleLabelSpec subtitleLabelSpec];
    [subtitleLabelSpec setTextColor:greenColor];

    titleSubtitleLabelSpec2 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v26 = [titleSubtitleLabelSpec2 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugNonInterestingTitleSubtitleLabelSpec:v26];

    redColor = [MEMORY[0x1E69DC888] redColor];
    debugNonInterestingTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugNonInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec2 = [debugNonInterestingTitleSubtitleLabelSpec subtitleLabelSpec];
    [subtitleLabelSpec2 setTextColor:redColor];

    v30 = PXCuratedLibraryHeaderWantsTitleForZoomLevel(2uLL, v14);
    v31 = PXCuratedLibraryHeaderWantsSubtitleForZoomLevel(2uLL, v14);
    if (curatedLibraryLayoutStyle == 1)
    {
      v34 = +[PXLemonadeSettings sharedInstance];
      enableMonthLocationTitles = [v34 enableMonthLocationTitles];

      if ((enableMonthLocationTitles & 1) == 0)
      {
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v33 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v38 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"d" options:0 locale:currentLocale];
        [v33 setDateFormat:v38];

        allowsCustomDateTitles = 0;
        v36 = 0;
LABEL_8:
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setWantsTitle:v30];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setWantsSubtitle:v31];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setSwapTitleWithSubtitle:v36];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTitleDateFormatter:v33];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setShouldOmitYear:allowsCustomDateTitles];
        0x800 = [[PXCuratedLibraryChapterHeaderLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options | 0x800];
        shouldFloat = [(PXCuratedLibraryChapterHeaderLayoutSpec *)0x800 shouldFloat];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setShouldTextFadeOutWhenReachingTop:shouldFloat];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setShouldButtonsFadeOutWhenReachingTop:shouldFloat];
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)0x800 titleHeight];
        v42 = v41;
        [v15 monthsInlineHeadersFadeoutDistance];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setFadeOutDistance:v42 * v43];
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)0x800 floatingDistanceFromSafeAreaTop];
        v45 = v44;
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)0x800 titleHeight];
        v47 = v46;
        [v15 monthsInlineHeadersFadeoutOffset];
        v49 = v45 + v47 * (v48 + 1.0);
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)0x800 spacingBetweenTitleBottomAndNextCardTop];
        v51 = v50 + v49;
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 fadeOutDistance];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setFadeOutDistanceFromSafeAreaTop:v51 - v52];
        [v15 monthsInlineHeadersFadeoutMinimumAlpha];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTextFadeOutMinimumAlpha:?];
        if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 ellipsisButtonSpecialTreatment])
        {
          [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setButtonsFadeOutMinimumAlpha:0.0];
        }

        PXVisionScaledPoint();
      }

      v33 = 0;
      allowsCustomDateTitles = 0;
    }

    else
    {
      allowsCustomDateTitles = [v15 allowsCustomDateTitles];
      v33 = 0;
    }

    v36 = 1;
    goto LABEL_8;
  }

  return 0;
}

@end