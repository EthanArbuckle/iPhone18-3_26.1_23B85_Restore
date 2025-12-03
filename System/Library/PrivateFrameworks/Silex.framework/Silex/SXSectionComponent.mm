@interface SXSectionComponent
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
@end

@implementation SXSectionComponent

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"animation"])
  {
    v5 = @"scene";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXSectionComponent;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, nameCopy);
  }

  return v5;
}

@end