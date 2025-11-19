@interface SXConditionalAdvertisementPlacementType
+ (id)valueClassBlockForPropertyWithName:(id)a3;
@end

@implementation SXConditionalAdvertisementPlacementType

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"conditions"])
  {
    v5 = &__block_literal_global_43;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXConditionalAdvertisementPlacementType;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

@end