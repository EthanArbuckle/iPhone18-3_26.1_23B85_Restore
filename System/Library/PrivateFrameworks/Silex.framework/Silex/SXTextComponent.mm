@interface SXTextComponent
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXTextComponent

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"inlineTextStyles"])
  {
    v5 = &__block_literal_global_46;
  }

  else if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_9_0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXTextComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end