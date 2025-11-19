@interface _UIStatusBarElectronicTollCollectionItem
- (id)imageForUpdate:(id)a3;
@end

@implementation _UIStatusBarElectronicTollCollectionItem

- (id)imageForUpdate:(id)a3
{
  v3 = a3;
  v4 = [v3 data];
  v5 = [v4 electronicTollCollectionEntry];

  v6 = MEMORY[0x1E696AAE8];
  v7 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
  v8 = [v6 bundleWithPath:v7];

  v9 = [v3 styleAttributes];
  v10 = [v9 traitCollection];
  v11 = [UIImage imageNamed:@"Black_JapanETC" inBundle:v8 compatibleWithTraitCollection:v10];

  v12 = [v11 imageWithRenderingMode:2];

  v13 = [v3 styleAttributes];

  v14 = [v13 imageTintColor];

  if (([v5 BOOLValue] & 1) == 0)
  {
    v15 = [v14 colorWithAlphaComponent:0.4];

    v14 = v15;
  }

  v16 = [v12 _flatImageWithColor:v14];

  return v16;
}

@end