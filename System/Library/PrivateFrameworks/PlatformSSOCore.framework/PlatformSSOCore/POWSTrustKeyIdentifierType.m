@interface POWSTrustKeyIdentifierType
+ (id)definition;
@end

@implementation POWSTrustKeyIdentifierType

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addAttributeWithName:@"ValueType" type:objc_opt_class()];
  [v2 setContentPropertyName:@"stringValue" type:objc_opt_class()];

  return v2;
}

@end