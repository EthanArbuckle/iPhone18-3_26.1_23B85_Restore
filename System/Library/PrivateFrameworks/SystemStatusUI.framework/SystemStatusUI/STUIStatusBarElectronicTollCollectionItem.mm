@interface STUIStatusBarElectronicTollCollectionItem
- (id)imageForUpdate:(id)update;
@end

@implementation STUIStatusBarElectronicTollCollectionItem

- (id)imageForUpdate:(id)update
{
  updateCopy = update;
  data = [updateCopy data];
  electronicTollCollectionEntry = [data electronicTollCollectionEntry];

  v6 = MEMORY[0x277D755B8];
  v7 = DashBoardFrameworkBundle();
  styleAttributes = [updateCopy styleAttributes];
  traitCollection = [styleAttributes traitCollection];
  v10 = [v6 imageNamed:@"Black_JapanETC" inBundle:v7 compatibleWithTraitCollection:traitCollection];

  v11 = [v10 imageWithRenderingMode:2];

  styleAttributes2 = [updateCopy styleAttributes];

  imageTintColor = [styleAttributes2 imageTintColor];

  if (([electronicTollCollectionEntry BOOLValue] & 1) == 0)
  {
    v14 = [imageTintColor colorWithAlphaComponent:0.4];

    imageTintColor = v14;
  }

  v15 = [v11 _flatImageWithColor:imageTintColor];

  return v15;
}

@end