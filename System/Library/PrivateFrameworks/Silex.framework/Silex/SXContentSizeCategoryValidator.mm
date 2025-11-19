@interface SXContentSizeCategoryValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXContentSizeCategoryValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [a4 contentSizeCategory];
  v7 = [v5 minContentSizeCategory];
  v8 = [v5 maxContentSizeCategory];

  v9 = *MEMORY[0x1E69DDC90];
  v10 = (!v7 || v7 == v9 || UIContentSizeCategoryCompareToCategory(v6, v7) != NSOrderedAscending) && (!v8 || v8 == v9 || UIContentSizeCategoryCompareToCategory(v6, v8) != NSOrderedDescending);

  return v10;
}

@end