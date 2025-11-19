@interface POWSTrustToType
+ (id)definition;
@end

@implementation POWSTrustToType

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setContentPropertyName:@"stringValue" type:objc_opt_class()];
  [v2 addAttributeWithName:@"mustUnderstand" type:objc_opt_class() namespaceURI:@"http://www.w3.org/2003/05/soap-envelope"];

  return v2;
}

@end