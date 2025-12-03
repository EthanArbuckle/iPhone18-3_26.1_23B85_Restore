@interface SXConditionalDocumentStyle
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXConditionalDocumentStyle

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditions"])
  {
    v5 = &__block_literal_global_66;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXConditionalDocumentStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end