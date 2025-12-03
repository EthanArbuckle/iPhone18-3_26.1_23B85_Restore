@interface _UIStatusBarElectronicTollCollectionItem
- (id)imageForUpdate:(id)update;
@end

@implementation _UIStatusBarElectronicTollCollectionItem

- (id)imageForUpdate:(id)update
{
  updateCopy = update;
  data = [updateCopy data];
  electronicTollCollectionEntry = [data electronicTollCollectionEntry];

  v6 = MEMORY[0x1E696AAE8];
  v7 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
  v8 = [v6 bundleWithPath:v7];

  styleAttributes = [updateCopy styleAttributes];
  traitCollection = [styleAttributes traitCollection];
  v11 = [UIImage imageNamed:@"Black_JapanETC" inBundle:v8 compatibleWithTraitCollection:traitCollection];

  v12 = [v11 imageWithRenderingMode:2];

  styleAttributes2 = [updateCopy styleAttributes];

  imageTintColor = [styleAttributes2 imageTintColor];

  if (([electronicTollCollectionEntry BOOLValue] & 1) == 0)
  {
    v15 = [imageTintColor colorWithAlphaComponent:0.4];

    imageTintColor = v15;
  }

  v16 = [v12 _flatImageWithColor:imageTintColor];

  return v16;
}

@end