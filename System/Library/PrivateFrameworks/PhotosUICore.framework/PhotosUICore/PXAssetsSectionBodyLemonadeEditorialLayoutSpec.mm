@interface PXAssetsSectionBodyLemonadeEditorialLayoutSpec
- (PXAssetsSectionBodyLemonadeEditorialLayoutSpec)initWithExtendedTraitCollection:(id)a3 bodyCornerRadius:(id)a4;
@end

@implementation PXAssetsSectionBodyLemonadeEditorialLayoutSpec

- (PXAssetsSectionBodyLemonadeEditorialLayoutSpec)initWithExtendedTraitCollection:(id)a3 bodyCornerRadius:(id)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = a3;
  v19.receiver = self;
  v19.super_class = PXAssetsSectionBodyLemonadeEditorialLayoutSpec;
  v14 = [(PXAssetsSectionBodyLemonadeEditorialLayoutSpec *)&v19 initWithExtendedTraitCollection:v13];
  v15 = v14;
  if (v14)
  {
    v14->super._bodyCornerRadius.var0.var0.topLeft = v11;
    v14->super._bodyCornerRadius.var0.var0.topRight = v10;
    v14->super._bodyCornerRadius.var0.var0.bottomLeft = v9;
    v14->super._bodyCornerRadius.var0.var0.bottomRight = v8;
    if ([v13 userInterfaceIdiom] == 5)
    {
      v15->super._interitemSpacing = 4.0;
    }

    else
    {
      v16 = [off_1E77219A8 sharedInstance];
      [v16 interitemSpacing];
      v15->super._interitemSpacing = v17;
    }
  }

  return v15;
}

@end