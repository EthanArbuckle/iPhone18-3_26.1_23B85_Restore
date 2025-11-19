@interface SXSectionComponent
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
@end

@implementation SXSectionComponent

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"animation"])
  {
    v5 = @"scene";
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXSectionComponent;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, v4);
  }

  return v5;
}

@end