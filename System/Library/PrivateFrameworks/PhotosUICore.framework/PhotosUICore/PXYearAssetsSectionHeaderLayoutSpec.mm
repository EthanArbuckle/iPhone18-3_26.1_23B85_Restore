@interface PXYearAssetsSectionHeaderLayoutSpec
- (PXYearAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 padding:(UIEdgeInsets)a5 variant:(int64_t)a6;
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

- (PXYearAssetsSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 padding:(UIEdgeInsets)a5 variant:(int64_t)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a3;
  v32.receiver = self;
  v32.super_class = PXYearAssetsSectionHeaderLayoutSpec;
  v14 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v32 initWithExtendedTraitCollection:v13 options:a4 variant:a6];
  if (v14)
  {
    v15 = +[PXCuratedLibrarySettings sharedInstance];
    [v13 curatedLibraryLayoutStyle];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setEllipsisButtonSpecialTreatment:a6 != 0];
    [(PXYearAssetsSectionHeaderLayoutSpec *)v14 setPadding:top, left, bottom, right];
    [v15 cornerRadiusForYears];
    *&v16 = v16;
    LODWORD(v17) = LODWORD(v16);
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setCornerRadius:v16, v17, 0.0, 0.0];
    v18 = [off_1E7721788 px_headerTitleLabelSpecForZoomLevel:1 featureSpec:v14];
    v19 = objc_alloc_init(off_1E7721910);
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setTitleSubtitleLabelSpec:v19];

    v20 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    [v20 setTitleLabelSpec:v18];

    v21 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v22 = [v21 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugInterestingTitleSubtitleLabelSpec:v22];

    v23 = [MEMORY[0x1E69DC888] greenColor];
    v24 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugInterestingTitleSubtitleLabelSpec];
    v25 = [v24 subtitleLabelSpec];
    [v25 setTextColor:v23];

    v26 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 titleSubtitleLabelSpec];
    v27 = [v26 copy];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 setDebugNonInterestingTitleSubtitleLabelSpec:v27];

    v28 = [MEMORY[0x1E69DC888] redColor];
    v29 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v14 debugNonInterestingTitleSubtitleLabelSpec];
    v30 = [v29 subtitleLabelSpec];
    [v30 setTextColor:v28];

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