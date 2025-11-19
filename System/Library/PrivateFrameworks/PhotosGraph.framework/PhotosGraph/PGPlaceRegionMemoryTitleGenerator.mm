@interface PGPlaceRegionMemoryTitleGenerator
- (id)_placeTitle;
@end

@implementation PGPlaceRegionMemoryTitleGenerator

- (id)_placeTitle
{
  v2 = [(PGPlaceMemoryTitleGenerator *)self placeNode];
  v3 = [v2 label];

  if ([v3 isEqualToString:@"Urban"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatCity";
  }

  else if ([v3 isEqualToString:@"Beach"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatBeach";
  }

  else if ([v3 isEqualToString:@"Mountain"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatMountain";
  }

  else if ([v3 isEqualToString:@"Nature"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PGPlaceMemoryTitleFormatNature";
  }

  else
  {
    if (![v3 isEqualToString:@"Water"])
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