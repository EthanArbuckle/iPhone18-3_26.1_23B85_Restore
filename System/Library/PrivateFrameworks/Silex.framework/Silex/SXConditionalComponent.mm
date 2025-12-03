@interface SXConditionalComponent
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXConditionalComponent

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditions"])
  {
    v5 = &__block_literal_global_69;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXConditionalComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end