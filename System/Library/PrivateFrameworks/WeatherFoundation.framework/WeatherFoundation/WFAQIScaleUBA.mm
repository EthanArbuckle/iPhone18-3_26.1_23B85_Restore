@interface WFAQIScaleUBA
- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description;
@end

@implementation WFAQIScaleUBA

- (id)scaleCategoryForCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description
{
  descriptionCopy = description;
  v6 = [[WFAQIScaleCategoryUBA alloc] initWithCategoryIndex:index localizedCategoryDescription:descriptionCopy];

  return v6;
}

@end