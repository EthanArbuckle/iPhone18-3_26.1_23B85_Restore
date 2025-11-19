@interface PXYearAssetsSkimmingSectionHeaderLayoutSpec
- (PXYearAssetsSkimmingSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 padding:(UIEdgeInsets)a5 variant:(int64_t)a6;
@end

@implementation PXYearAssetsSkimmingSectionHeaderLayoutSpec

- (PXYearAssetsSkimmingSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 padding:(UIEdgeInsets)a5 variant:(int64_t)a6
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PXYearAssetsSkimmingSectionHeaderLayoutSpec;
  v6 = [(PXYearAssetsSectionHeaderLayoutSpec *)&v9 initWithExtendedTraitCollection:a3 options:a4 padding:0 variant:a5.top, a5.left, a5.bottom, a5.right];
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