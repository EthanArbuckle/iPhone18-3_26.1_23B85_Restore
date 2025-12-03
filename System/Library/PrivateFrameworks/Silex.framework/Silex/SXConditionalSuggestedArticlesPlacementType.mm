@interface SXConditionalSuggestedArticlesPlacementType
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXConditionalSuggestedArticlesPlacementType

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditions"])
  {
    v5 = &__block_literal_global_65;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXConditionalSuggestedArticlesPlacementType;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end