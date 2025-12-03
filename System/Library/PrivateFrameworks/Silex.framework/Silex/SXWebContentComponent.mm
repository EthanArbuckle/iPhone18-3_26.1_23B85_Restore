@interface SXWebContentComponent
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXWebContentComponent

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"dataSourceReferences"])
  {
    v5 = @"dataSources";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXWebContentComponent;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, nameCopy);
  }

  return v5;
}

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"dataSourceReferences"])
  {
    v5 = &__block_literal_global_23;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXWebContentComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

@end