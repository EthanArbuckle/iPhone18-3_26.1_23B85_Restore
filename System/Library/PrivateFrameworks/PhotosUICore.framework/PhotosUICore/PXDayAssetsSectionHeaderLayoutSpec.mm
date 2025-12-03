@interface PXDayAssetsSectionHeaderLayoutSpec
- (PXDayAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant;
@end

@implementation PXDayAssetsSectionHeaderLayoutSpec

- (PXDayAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant
{
  v30.receiver = self;
  v30.super_class = PXDayAssetsSectionHeaderLayoutSpec;
  v6 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v30 initWithExtendedTraitCollection:collection options:options variant:?];
  if (v6)
  {
    v7 = +[PXCuratedLibrarySettings sharedInstance];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setEllipsisButtonSpecialTreatment:variant != 0];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setPadding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    LODWORD(v8) = *off_1E7721FF0;
    LODWORD(v9) = *(off_1E7721FF0 + 1);
    LODWORD(v10) = *(off_1E7721FF0 + 2);
    LODWORD(v11) = *(off_1E7721FF0 + 3);
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setCornerRadius:v8, v9, v10, v11];
    v12 = [off_1E7721910 px_headerTitleSubtitleLabelSpecForZoomLevel:3 featureSpec:v6];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setTitleSubtitleLabelSpec:v12];

    titleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 titleSubtitleLabelSpec];
    v14 = [titleSubtitleLabelSpec copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setDebugInterestingTitleSubtitleLabelSpec:v14];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    debugInterestingTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 debugInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec = [debugInterestingTitleSubtitleLabelSpec subtitleLabelSpec];
    [subtitleLabelSpec setTextColor:greenColor];

    debugInterestingTitleSubtitleLabelSpec2 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 debugInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec2 = [debugInterestingTitleSubtitleLabelSpec2 subtitleLabelSpec];
    [subtitleLabelSpec2 setNumberOfLines:3];

    titleSubtitleLabelSpec2 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 titleSubtitleLabelSpec];
    v21 = [titleSubtitleLabelSpec2 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setDebugNonInterestingTitleSubtitleLabelSpec:v21];

    redColor = [MEMORY[0x1E69DC888] redColor];
    debugNonInterestingTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 debugNonInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec3 = [debugNonInterestingTitleSubtitleLabelSpec subtitleLabelSpec];
    [subtitleLabelSpec3 setTextColor:redColor];

    debugNonInterestingTitleSubtitleLabelSpec2 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 debugNonInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec4 = [debugNonInterestingTitleSubtitleLabelSpec2 subtitleLabelSpec];
    [subtitleLabelSpec4 setNumberOfLines:3];

    v27 = v6;
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v27 setWantsTitle:1];
    v28 = v27;

    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setWantsSubtitle:1];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setShouldAvoidOverlapWithSecondaryToolbar:1];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 curatedLibraryEdgeToEdgeContentDefaultPadding];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setContentPadding:?];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setShouldAccommodateLeadingButtonsLayout:1];
    [v7 daysHeaderGradientAlpha];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setGradientAlpha:?];
    [v7 daysHeaderGradientHeight];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setGradientHeight:?];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setGradientRespectsSafeArea:0];
    if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 ellipsisButtonSpecialTreatment])
    {
      [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setShouldButtonsFadeOutWhenReachingTop:1];
      [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setFadeOutDistance:10.0];
      [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setFadeOutDistanceFromSafeAreaTop:10.0];
      [(PXCuratedLibrarySectionHeaderLayoutSpec *)v28 setButtonsFadeOutMinimumAlpha:0.0];
    }
  }

  return v6;
}

@end