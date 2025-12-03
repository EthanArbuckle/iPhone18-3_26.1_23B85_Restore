@interface WFAQIScaleHJ6332012
- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description;
@end

@implementation WFAQIScaleHJ6332012

- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description
{
  descriptionCopy = description;
  v6 = [[WFAQIScaleCategoryHJ6332012 alloc] initWithCategoryIndex:index localizedCategoryDescription:descriptionCopy];

  return v6;
}

@end