@interface SFCardSection
@end

@implementation SFCardSection

uint64_t __116__SFCardSection_SearchUIHorizontallyScrollingSectionModel__searchUIHorizontallyScrollingSectionModel_idealItemWidth__block_invoke()
{
  result = [MEMORY[0x1E69D9240] isMacOS];
  if (result)
  {
    v1 = 113.0;
  }

  else
  {
    result = [MEMORY[0x1E69D9240] isLargePhone];
    v1 = 155.0;
    if (result)
    {
      v1 = 170.0;
    }
  }

  searchUIHorizontallyScrollingSectionModel_idealItemWidth_idealItemWidth = *&v1;
  return result;
}

@end