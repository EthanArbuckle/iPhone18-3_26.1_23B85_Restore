@interface SXDocumentStyle
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXDocumentStyle

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_12;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXDocumentStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end