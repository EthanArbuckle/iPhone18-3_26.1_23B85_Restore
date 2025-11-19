@interface WFAQIScaleNAQI
- (id)scaleCategoryForCategoryIndex:(unint64_t)a3 localizedCategoryDescription:(id)a4;
@end

@implementation WFAQIScaleNAQI

- (id)scaleCategoryForCategoryIndex:(unint64_t)a3 localizedCategoryDescription:(id)a4
{
  v5 = a4;
  v6 = [[WFAQIScaleCategoryNAQI alloc] initWithCategoryIndex:a3 localizedCategoryDescription:v5];

  return v6;
}

@end