@interface PXYearAssetsSectionHeaderLayoutSpec
- (PXYearAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options padding:(UIEdgeInsets)padding variant:(int64_t)variant;
- (UIEdgeInsets)padding;
@end

@implementation PXYearAssetsSectionHeaderLayoutSpec

- (UIEdgeInsets)padding
{
  top = self->padding.top;
  left = self->padding.left;
  bottom = self->padding.bottom;
  right = self->padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXYearAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options padding:(UIEdgeInsets)padding variant:(int64_t)variant
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  collectionCopy = collection;
  v32.receiver = self;
  v32.super_class = PXYearAssetsSectionHeaderLayoutSpec;
  v14 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v32 initWithExtendedTraitCollection:collectionCopy options:options variant:variant];
  if (v14)
  {
    v15 = +[PXCuratedLibrarySettings sharedInstance];
    [collectionCopy curatedLibraryLayoutStyle];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setEllipsisButtonSpecialTreatment:variant != 0];
    [(PXYearAssetsSectionHeaderLayoutSpec *)v14 setPadding:top, left, bottom, right];
    [v15 cornerRadiusForYears];
    *&v16 = v16;
    LODWORD(v17) = LODWORD(v16);
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setCornerRadius:v16, v17, 0.0, 0.0];
    v18 = [off_1E7721788 px_headerTitleLabelSpecForZoomLevel:1 featureSpec:v14];
    v19 = objc_alloc_init(off_1E7721910);
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTitleSubtitleLabelSpec:v19];

    titleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    [titleSubtitleLabelSpec setTitleLabelSpec:v18];

    titleSubtitleLabelSpec2 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v22 = [titleSubtitleLabelSpec2 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugInterestingTitleSubtitleLabelSpec:v22];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    debugInterestingTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec = [debugInterestingTitleSubtitleLabelSpec subtitleLabelSpec];
    [subtitleLabelSpec setTextColor:greenColor];

    titleSubtitleLabelSpec3 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v27 = [titleSubtitleLabelSpec3 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugNonInterestingTitleSubtitleLabelSpec:v27];

    redColor = [MEMORY[0x1E69DC888] redColor];
    debugNonInterestingTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugNonInterestingTitleSubtitleLabelSpec];
    subtitleLabelSpec2 = [debugNonInterestingTitleSubtitleLabelSpec subtitleLabelSpec];
    [subtitleLabelSpec2 setTextColor:redColor];

    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setWantsTitle:1];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setWantsSubtitle:0];
    if ([(PXYearAssetsSectionHeaderLayoutSpec *)v14 sizeClass]== 2)
    {
      [(PXYearAssetsSectionHeaderLayoutSpec *)v14 userInterfaceIdiom];
    }

    else if ([(PXYearAssetsSectionHeaderLayoutSpec *)v14 layoutOrientation]== 2)
    {
      [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setButtonHeight:20.0];
    }

    else
    {
      [(PXYearAssetsSectionHeaderLayoutSpec *)v14 sizeSubclass];
    }

    PXEdgeInsetsMake();
  }

  return 0;
}

@end