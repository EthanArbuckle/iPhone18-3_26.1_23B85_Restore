@interface SFMiniCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_additionalSectionInsets;
@end

@implementation SFMiniCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_additionalSectionInsets
{
  v0 = [MEMORY[0x1E69D9240] isMacOS];
  result = 12.0;
  if (v0)
  {
    return 6.0;
  }

  return result;
}

@end