@interface WFAQIScaleIMECA
- (id)scaleCategoryForCategoryIndex:(unint64_t)a3 localizedCategoryDescription:(id)a4;
@end

@implementation WFAQIScaleIMECA

- (id)scaleCategoryForCategoryIndex:(unint64_t)a3 localizedCategoryDescription:(id)a4
{
  v5 = a4;
  v6 = [[WFAQIScaleCategoryIMECA alloc] initWithCategoryIndex:a3 localizedCategoryDescription:v5];

  return v6;
}

@end