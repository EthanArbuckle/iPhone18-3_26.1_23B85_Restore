@interface SXTextComponent
+ (id)valueClassBlockForPropertyWithName:(id)a3;
@end

@implementation SXTextComponent

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"inlineTextStyles"])
  {
    v5 = &__block_literal_global_46;
  }

  else if ([v4 isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_9_0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXTextComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

@end