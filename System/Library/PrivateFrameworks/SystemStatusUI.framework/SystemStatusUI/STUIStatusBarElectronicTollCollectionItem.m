@interface STUIStatusBarElectronicTollCollectionItem
- (id)imageForUpdate:(id)a3;
@end

@implementation STUIStatusBarElectronicTollCollectionItem

- (id)imageForUpdate:(id)a3
{
  v3 = a3;
  v4 = [v3 data];
  v5 = [v4 electronicTollCollectionEntry];

  v6 = MEMORY[0x277D755B8];
  v7 = DashBoardFrameworkBundle();
  v8 = [v3 styleAttributes];
  v9 = [v8 traitCollection];
  v10 = [v6 imageNamed:@"Black_JapanETC" inBundle:v7 compatibleWithTraitCollection:v9];

  v11 = [v10 imageWithRenderingMode:2];

  v12 = [v3 styleAttributes];

  v13 = [v12 imageTintColor];

  if (([v5 BOOLValue] & 1) == 0)
  {
    v14 = [v13 colorWithAlphaComponent:0.4];

    v13 = v14;
  }

  v15 = [v11 _flatImageWithColor:v13];

  return v15;
}

@end