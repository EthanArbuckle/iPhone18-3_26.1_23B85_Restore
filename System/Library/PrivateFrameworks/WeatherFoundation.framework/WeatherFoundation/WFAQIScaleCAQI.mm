@interface WFAQIScaleCAQI
- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description;
@end

@implementation WFAQIScaleCAQI

- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description
{
  descriptionCopy = description;
  v6 = [[WFAQIScaleCategoryCAQI alloc] initWithCategoryIndex:index localizedCategoryDescription:descriptionCopy];

  return v6;
}

@end