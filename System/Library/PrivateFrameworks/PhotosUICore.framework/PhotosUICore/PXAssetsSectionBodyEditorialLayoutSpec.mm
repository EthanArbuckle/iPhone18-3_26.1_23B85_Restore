@interface PXAssetsSectionBodyEditorialLayoutSpec
- (PXAssetsSectionBodyEditorialLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
@end

@implementation PXAssetsSectionBodyEditorialLayoutSpec

- (PXAssetsSectionBodyEditorialLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v8.receiver = self;
  v8.super_class = PXAssetsSectionBodyEditorialLayoutSpec;
  v4 = [(PXDayAssetsSectionBodyLayoutSpec *)&v8 initWithExtendedTraitCollection:collection options:options];
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