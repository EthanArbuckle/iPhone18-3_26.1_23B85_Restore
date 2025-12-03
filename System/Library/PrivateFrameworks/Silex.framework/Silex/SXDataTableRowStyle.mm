@interface SXDataTableRowStyle
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXDataTableRowStyle

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_13;
  }

  else if ([nameCopy isEqualToString:@"selectors"])
  {
    v5 = &__block_literal_global_6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXDataTableRowStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end