@interface SFLinkPresentationCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier;
@end

@implementation SFLinkPresentationCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 1.33333333;
  if (!isMacOS)
  {
    return 1.0;
  }

  return result;
}

@end