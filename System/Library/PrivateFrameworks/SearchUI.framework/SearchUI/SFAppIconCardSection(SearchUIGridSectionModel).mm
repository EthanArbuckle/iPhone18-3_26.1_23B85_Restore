@interface SFAppIconCardSection(SearchUIGridSectionModel)
- (double)searchUIGridSectionModel_groupInsetFor:()SearchUIGridSectionModel;
@end

@implementation SFAppIconCardSection(SearchUIGridSectionModel)

- (double)searchUIGridSectionModel_groupInsetFor:()SearchUIGridSectionModel
{
  container = [a3 container];
  [container effectiveContentSize];
  v5 = v4;
  +[SearchUIUtilities standardTableCellContentInset];
  v7 = v5 + v6 * -2.0;

  v8 = +[SearchUIAppIconUtilities numberOfAppIconsPerRow];
  +[SearchUIAppIconUtilities preferredHorizontalPlatterInsetForAppIcons];
  v10 = v9;
  +[SearchUIAppIconUtilities appIconItemSize];
  [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:0 forView:-(v7 + -v8 * (v11 + v10 * 2.0)) / (v8 + -1.0)];
  return 0.0;
}

@end