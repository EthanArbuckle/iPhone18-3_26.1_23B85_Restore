@interface UITraitCollection(PBFUtilities)
+ (id)pbf_traitCollectionForDisplayContext:()PBFUtilities;
@end

@implementation UITraitCollection(PBFUtilities)

+ (id)pbf_traitCollectionForDisplayContext:()PBFUtilities
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v3 = +[PBFGenericDisplayContext mainScreen];
  }

  if ([v3 pbf_accessibilityContrast] == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = UIAccessibilityContrastFromPBFAccessibilityContrast([v3 pbf_accessibilityContrast]);
  }

  if ([v3 pbf_userInterfaceStyle])
  {
    v5 = UIUserInterfaceStyleFromPBFUserInterfaceStyle([v3 pbf_userInterfaceStyle]);
  }

  else
  {
    v5 = 1;
  }

  [v3 pbf_interfaceOrientation];
  v6 = 1;
  if (BSInterfaceOrientationIsLandscape())
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v3 pbf_interfaceOrientation];
  if (!BSInterfaceOrientationIsLandscape())
  {
    v6 = 2;
  }

  v8 = MEMORY[0x277D75C80];
  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v5];
  v16[0] = v9;
  v10 = [MEMORY[0x277D75C80] traitCollectionWithAccessibilityContrast:v4];
  v16[1] = v10;
  v11 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:v7];
  v16[2] = v11;
  v12 = [MEMORY[0x277D75C80] traitCollectionWithVerticalSizeClass:v6];
  v16[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v14 = [v8 traitCollectionWithTraitsFromCollections:v13];

  return v14;
}

@end