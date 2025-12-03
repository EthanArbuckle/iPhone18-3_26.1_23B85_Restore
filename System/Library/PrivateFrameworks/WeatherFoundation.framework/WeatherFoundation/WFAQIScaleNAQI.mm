@interface WFAQIScaleNAQI
- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description;
@end

@implementation WFAQIScaleNAQI

- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description
{
  descriptionCopy = description;
  v6 = [[WFAQIScaleCategoryNAQI alloc] initWithCategoryIndex:index localizedCategoryDescription:descriptionCopy];

  return v6;
}

@end