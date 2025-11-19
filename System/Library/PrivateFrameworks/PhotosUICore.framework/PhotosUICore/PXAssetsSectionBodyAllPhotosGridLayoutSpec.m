@interface PXAssetsSectionBodyAllPhotosGridLayoutSpec
- (PXAssetsSectionBodyAllPhotosGridLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
@end

@implementation PXAssetsSectionBodyAllPhotosGridLayoutSpec

- (PXAssetsSectionBodyAllPhotosGridLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = PXAssetsSectionBodyAllPhotosGridLayoutSpec;
  v4 = [(PXDayAssetsSectionBodyLayoutSpec *)&v8 initWithExtendedTraitCollection:a3 options:a4];
  if (v4)
  {
    v5 = [off_1E77219A8 sharedInstance];
    [v5 interitemSpacing];
    v4->super._interitemSpacing = v6;
  }

  return v4;
}

@end