@interface WFAQIScaleEPA
- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description;
@end

@implementation WFAQIScaleEPA

- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description
{
  descriptionCopy = description;
  v6 = [[WFAQIScaleCategoryEPA alloc] initWithCategoryIndex:index localizedCategoryDescription:descriptionCopy];

  return v6;
}

@end