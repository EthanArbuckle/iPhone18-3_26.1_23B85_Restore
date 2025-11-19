@interface PXAssetsSectionBodyEditorialLayoutSpec
- (PXAssetsSectionBodyEditorialLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
@end

@implementation PXAssetsSectionBodyEditorialLayoutSpec

- (PXAssetsSectionBodyEditorialLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = PXAssetsSectionBodyEditorialLayoutSpec;
  v4 = [(PXDayAssetsSectionBodyLayoutSpec *)&v8 initWithExtendedTraitCollection:a3 options:a4];
  if (v4)
  {
    v5 = +[PXCuratedLibrarySettings sharedInstance];
    [v5 cornerRadiusForDays];
    *&v6 = v6;
    v4->super._bodyCornerRadius = vdupq_lane_s32(*&v6, 0);
  }

  return v4;
}

@end