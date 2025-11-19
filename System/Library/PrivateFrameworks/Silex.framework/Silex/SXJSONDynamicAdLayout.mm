@interface SXJSONDynamicAdLayout
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
@end

@implementation SXJSONDynamicAdLayout

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"margin"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXJSONDynamicAdLayout;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

@end