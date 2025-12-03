@interface SXContentSizeCategoryValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXContentSizeCategoryValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contentSizeCategory = [context contentSizeCategory];
  minContentSizeCategory = [conditionCopy minContentSizeCategory];
  maxContentSizeCategory = [conditionCopy maxContentSizeCategory];

  v9 = *MEMORY[0x1E69DDC90];
  v10 = (!minContentSizeCategory || minContentSizeCategory == v9 || UIContentSizeCategoryCompareToCategory(contentSizeCategory, minContentSizeCategory) != NSOrderedAscending) && (!maxContentSizeCategory || maxContentSizeCategory == v9 || UIContentSizeCategoryCompareToCategory(contentSizeCategory, maxContentSizeCategory) != NSOrderedDescending);

  return v10;
}

@end