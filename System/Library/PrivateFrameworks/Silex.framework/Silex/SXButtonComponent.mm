@interface SXButtonComponent
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
@end

@implementation SXButtonComponent

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"action"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKey:@"type"];
    v9 = [SXClassFactory classForBaseClass:objc_opt_class() type:v8];
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXButtonComponent;
    v9 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  return v9;
}

@end