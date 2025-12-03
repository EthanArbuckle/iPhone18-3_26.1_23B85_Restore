@interface PXYearAssetsSkimmingSectionHeaderLayoutSpec
- (PXYearAssetsSkimmingSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options padding:(UIEdgeInsets)padding variant:(int64_t)variant;
@end

@implementation PXYearAssetsSkimmingSectionHeaderLayoutSpec

- (PXYearAssetsSkimmingSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options padding:(UIEdgeInsets)padding variant:(int64_t)variant
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PXYearAssetsSkimmingSectionHeaderLayoutSpec;
  v6 = [(PXYearAssetsSectionHeaderLayoutSpec *)&v9 initWithExtendedTraitCollection:collection options:options padding:0 variant:padding.top, padding.left, padding.bottom, padding.right];
  if (v6)
  {
    [MEMORY[0x1E69DC888] whiteColor];
    objc_claimAutoreleasedReturnValue();
    v7 = objc_alloc_init(off_1E7721788);
    PXCuratedLibraryHeaderTitleFontForZoomLevel(1, v6);
  }

  return 0;
}

@end