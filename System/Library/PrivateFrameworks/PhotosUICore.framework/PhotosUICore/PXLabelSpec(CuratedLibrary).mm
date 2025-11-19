@interface PXLabelSpec(CuratedLibrary)
+ (void)px_headerSubtitleLabelSpecForZoomLevel:()CuratedLibrary featureSpec:;
+ (void)px_headerTitleLabelSpecForZoomLevel:()CuratedLibrary featureSpec:;
@end

@implementation PXLabelSpec(CuratedLibrary)

+ (void)px_headerSubtitleLabelSpecForZoomLevel:()CuratedLibrary featureSpec:
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(off_1E7721788);
  PXCuratedLibraryHeaderSubtitleFontForZoomLevel(a3, v5);
}

+ (void)px_headerTitleLabelSpecForZoomLevel:()CuratedLibrary featureSpec:
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(off_1E7721788);
  PXCuratedLibraryHeaderTitleFontForZoomLevel(a3, v5);
}

@end