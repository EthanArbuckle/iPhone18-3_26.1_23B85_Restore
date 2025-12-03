@interface PXAssetsSectionBodyAllPhotosGridLayoutSpec
- (PXAssetsSectionBodyAllPhotosGridLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
@end

@implementation PXAssetsSectionBodyAllPhotosGridLayoutSpec

- (PXAssetsSectionBodyAllPhotosGridLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v8.receiver = self;
  v8.super_class = PXAssetsSectionBodyAllPhotosGridLayoutSpec;
  v4 = [(PXDayAssetsSectionBodyLayoutSpec *)&v8 initWithExtendedTraitCollection:collection options:options];
  if (v4)
  {
    sharedInstance = [off_1E77219A8 sharedInstance];
    [sharedInstance interitemSpacing];
    v4->super._interitemSpacing = v6;
  }

  return v4;
}

@end