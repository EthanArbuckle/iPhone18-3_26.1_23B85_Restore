@interface PXMonthsAssetsSectionHeaderLayoutSpec
- (PXMonthsAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 padding:(UIEdgeInsets)a5 variant:(int64_t)a6;
- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)a3;
@end

@implementation PXMonthsAssetsSectionHeaderLayoutSpec

- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)a3
{
  v18.receiver = self;
  v18.super_class = PXMonthsAssetsSectionHeaderLayoutSpec;
  [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v18 adjustedContentPadding:a3.top, a3.left, a3.bottom, a3.right];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)self ellipsisButtonSpecialTreatment])
  {
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    if ([v12 alignActionButtonsTrailingEdges])
    {
      v13 = [(PXMonthsAssetsSectionHeaderLayoutSpec *)self layoutOrientation];

      if (v13 == 1)
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

- (PXMonthsAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 padding:(UIEdgeInsets)a5 variant:(int64_t)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a3;
  v54.receiver = self;
  v54.super_class = PXMonthsAssetsSectionHeaderLayoutSpec;
  v14 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v54 initWithExtendedTraitCollection:v13 options:a4 variant:a6];
  if (v14)
  {
    v15 = +[PXCuratedLibrarySettings sharedInstance];
    v16 = [v13 curatedLibraryLayoutStyle];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setEllipsisButtonSpecialTreatment:a6 != 0];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setCanShowEllipsisButton:v16 != 1];
    [(PXMonthsAssetsSectionHeaderLayoutSpec *)v14 adjustedContentPadding:top, left, bottom, right];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setPadding:?];
    LODWORD(v17) = 10.0;
    LODWORD(v18) = 10.0;
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setCornerRadius:v17, v18, 0.0, 0.0];
    v19 = [off_1E7721910 px_headerTitleSubtitleLabelSpecForZoomLevel:2 featureSpec:v14];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTitleSubtitleLabelSpec:v19];

    v20 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v21 = [v20 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugInterestingTitleSubtitleLabelSpec:v21];

    v22 = [MEMORY[0x1E69DC888] greenColor];
    v23 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugInterestingTitleSubtitleLabelSpec];
    v24 = [v23 subtitleLabelSpec];
    [v24 setTextColor:v22];

    v25 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v26 = [v25 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugNonInterestingTitleSubtitleLabelSpec:v26];

    v27 = [MEMORY[0x1E69DC888] redColor];
    v28 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugNonInterestingTitleSubtitleLabelSpec];
    v29 = [v28 subtitleLabelSpec];
    [v29 setTextColor:v27];

    v30 = PXCuratedLibraryHeaderWantsTitleForZoomLevel(2uLL, v14);
    v31 = PXCuratedLibraryHeaderWantsSubtitleForZoomLevel(2uLL, v14);
    if (v16 == 1)
    {
      v34 = +[PXLemonadeSettings sharedInstance];
      v35 = [v34 enableMonthLocationTitles];

      if ((v35 & 1) == 0)
      {
        v37 = [MEMORY[0x1E695DF58] currentLocale];
        v33 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v38 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"d" options:0 locale:v37];
        [v33 setDateFormat:v38];

        v32 = 0;
        v36 = 0;
LABEL_8:
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setWantsTitle:v30];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setWantsSubtitle:v31];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setSwapTitleWithSubtitle:v36];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTitleDateFormatter:v33];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setShouldOmitYear:v32];
        v39 = [[PXCuratedLibraryChapterHeaderLayoutSpec alloc] initWithExtendedTraitCollection:v13 options:a4 | 0x800];
        v40 = [(PXCuratedLibraryChapterHeaderLayoutSpec *)v39 shouldFloat];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setShouldTextFadeOutWhenReachingTop:v40];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setShouldButtonsFadeOutWhenReachingTop:v40];
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)v39 titleHeight];
        v42 = v41;
        [v15 monthsInlineHeadersFadeoutDistance];
        [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setFadeOutDistance:v42 * v43];
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)v39 floatingDistanceFromSafeAreaTop];
        v45 = v44;
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)v39 titleHeight];
        v47 = v46;
        [v15 monthsInlineHeadersFadeoutOffset];
        v49 = v45 + v47 * (v48 + 1.0);
        [(PXCuratedLibraryChapterHeaderLayoutSpec *)v39 spacingBetweenTitleBottomAndNextCardTop];
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
      v32 = 0;
    }

    else
    {
      v32 = [v15 allowsCustomDateTitles];
      v33 = 0;
    }

    v36 = 1;
    goto LABEL_8;
  }

  return 0;
}

@end