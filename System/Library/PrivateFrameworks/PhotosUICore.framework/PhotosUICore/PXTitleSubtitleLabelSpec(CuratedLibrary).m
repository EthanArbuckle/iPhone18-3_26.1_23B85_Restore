@interface PXTitleSubtitleLabelSpec(CuratedLibrary)
+ (void)px_headerTitleSubtitleLabelSpecForZoomLevel:()CuratedLibrary featureSpec:;
@end

@implementation PXTitleSubtitleLabelSpec(CuratedLibrary)

+ (void)px_headerTitleSubtitleLabelSpecForZoomLevel:()CuratedLibrary featureSpec:
{
  v5 = a4;
  v6 = objc_alloc_init(off_1E7721910);
  if (PXCuratedLibraryHeaderWantsTitleForZoomLevel(a3, v5))
  {
    v7 = [off_1E7721788 px_headerTitleLabelSpecForZoomLevel:a3 featureSpec:v5];
    [v6 setTitleLabelSpec:v7];
  }

  if (PXCuratedLibraryHeaderWantsSubtitleForZoomLevel(a3, v5))
  {
    v8 = [off_1E7721788 px_headerSubtitleLabelSpecForZoomLevel:a3 featureSpec:v5];
    [v6 setSubtitleLabelSpec:v8];
  }

  _DistanceBetweenTitleAndSubtitleForZoomLevelFeatureSpec(a3, v5);
  [v5 contentSizeCategory];
  PXPreferredContentSizeCategoryIsAccessibility();
}

@end