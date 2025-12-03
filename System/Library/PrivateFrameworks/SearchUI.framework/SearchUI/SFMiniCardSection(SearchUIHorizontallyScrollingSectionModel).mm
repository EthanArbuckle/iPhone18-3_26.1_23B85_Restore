@interface SFMiniCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_additionalSectionInsets;
@end

@implementation SFMiniCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_additionalSectionInsets
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 12.0;
  if (isMacOS)
  {
    return 6.0;
  }

  return result;
}

@end