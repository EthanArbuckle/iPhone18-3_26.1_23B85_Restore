@interface PXAssetsSectionBodyLemonadeEditorialLayoutSpec
- (PXAssetsSectionBodyLemonadeEditorialLayoutSpec)initWithExtendedTraitCollection:(id)collection bodyCornerRadius:(id)radius;
@end

@implementation PXAssetsSectionBodyLemonadeEditorialLayoutSpec

- (PXAssetsSectionBodyLemonadeEditorialLayoutSpec)initWithExtendedTraitCollection:(id)collection bodyCornerRadius:(id)radius
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  collectionCopy = collection;
  v19.receiver = self;
  v19.super_class = PXAssetsSectionBodyLemonadeEditorialLayoutSpec;
  v14 = [(PXAssetsSectionBodyLemonadeEditorialLayoutSpec *)&v19 initWithExtendedTraitCollection:collectionCopy];
  v15 = v14;
  if (v14)
  {
    v14->super._bodyCornerRadius.var0.var0.topLeft = v11;
    v14->super._bodyCornerRadius.var0.var0.topRight = v10;
    v14->super._bodyCornerRadius.var0.var0.bottomLeft = v9;
    v14->super._bodyCornerRadius.var0.var0.bottomRight = v8;
    if ([collectionCopy userInterfaceIdiom] == 5)
    {
      v15->super._interitemSpacing = 4.0;
    }

    else
    {
      sharedInstance = [off_1E77219A8 sharedInstance];
      [sharedInstance interitemSpacing];
      v15->super._interitemSpacing = v17;
    }
  }

  return v15;
}

@end