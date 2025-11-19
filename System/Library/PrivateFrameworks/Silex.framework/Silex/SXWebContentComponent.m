@interface SXWebContentComponent
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
+ (id)valueClassBlockForPropertyWithName:(id)a3;
@end

@implementation SXWebContentComponent

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dataSourceReferences"])
  {
    v5 = @"dataSources";
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXWebContentComponent;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, v4);
  }

  return v5;
}

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dataSourceReferences"])
  {
    v5 = &__block_literal_global_23;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXWebContentComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

@end