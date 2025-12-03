@interface SFCardSection(SearchUIHorizontallyScrollingSectionModel)
+ (double)searchUIHorizontallyScrollingSectionModel_idealItemWidth;
- (uint64_t)searchUIHorizontallyScrollingSectionModel_widthDimension;
@end

@implementation SFCardSection(SearchUIHorizontallyScrollingSectionModel)

+ (double)searchUIHorizontallyScrollingSectionModel_idealItemWidth
{
  if (searchUIHorizontallyScrollingSectionModel_idealItemWidth_onceToken != -1)
  {
    +[SFCardSection(SearchUIHorizontallyScrollingSectionModel) searchUIHorizontallyScrollingSectionModel_idealItemWidth];
  }

  return *&searchUIHorizontallyScrollingSectionModel_idealItemWidth_idealItemWidth;
}

- (uint64_t)searchUIHorizontallyScrollingSectionModel_widthDimension
{
  [objc_opt_class() searchUIHorizontallyScrollingSectionModel_idealItemWidth];
  v3 = v2;
  [self searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier];
  v5 = v4;
  v6 = 1.0;
  if (v5 < 2.0)
  {
    isSuperLargeAccessibilitySize = [MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize];
    v6 = 1.0;
    if (isSuperLargeAccessibilitySize)
    {
      v6 = 2.0;
    }
  }

  v8 = v5 * v6;
  [self searchUIHorizontallyScrollingSectionModel_interItemSpacing];
  [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:0 forView:v9 * (v8 + -1.0) + v3 * v8];
  v10 = MEMORY[0x1E6995558];

  return [v10 absoluteDimension:?];
}

@end