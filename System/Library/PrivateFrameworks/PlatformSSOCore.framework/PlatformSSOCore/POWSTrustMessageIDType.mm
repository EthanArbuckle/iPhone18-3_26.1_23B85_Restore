@interface POWSTrustMessageIDType
+ (id)definition;
@end

@implementation POWSTrustMessageIDType

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setContentPropertyName:@"stringValue" type:objc_opt_class()];

  return v2;
}

@end