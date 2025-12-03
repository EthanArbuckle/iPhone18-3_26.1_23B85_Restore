@interface PGPlaceRegionMemoryTitleGenerator
- (id)_placeTitle;
@end

@implementation PGPlaceRegionMemoryTitleGenerator

- (id)_placeTitle
{
  placeNode = [(PGPlaceMemoryTitleGenerator *)self placeNode];
  label = [placeNode label];

  if ([label isEqualToString:@"Urban"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatCity";
  }

  else if ([label isEqualToString:@"Beach"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatBeach";
  }

  else if ([label isEqualToString:@"Mountain"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatMountain";
  }

  else if ([label isEqualToString:@"Nature"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatNature";
  }

  else
  {
    if (![label isEqualToString:@"Water"])
    {
      v7 = 0;
      goto LABEL_14;
    }

    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatWater";
  }

  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  if (v7)
  {
    v8 = [PGTitle titleWithString:v7 category:2];
    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
LABEL_15:

  return v8;
}

@end