@interface POWSTrustRequestedSecurityTokenType
+ (id)definition;
@end

@implementation POWSTrustRequestedSecurityTokenType

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setContentPropertyName:@"stringValue" type:objc_opt_class()];

  return v2;
}

@end