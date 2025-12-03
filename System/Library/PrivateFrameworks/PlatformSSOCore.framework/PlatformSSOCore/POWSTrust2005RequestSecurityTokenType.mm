@interface POWSTrust2005RequestSecurityTokenType
+ (id)definition;
@end

@implementation POWSTrust2005RequestSecurityTokenType

+ (id)definition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___POWSTrust2005RequestSecurityTokenType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addNamespaceWithURI:@"http://schemas.xmlsoap.org/ws/2005/02/trust"];
  [v2 addElementWithName:@"AppliesTo" namespaceURI:@"http://schemas.xmlsoap.org/ws/2004/09/policy" type:objc_opt_class()];
  [v2 addElementWithName:@"KeyType" namespaceURI:@"http://schemas.xmlsoap.org/ws/2005/02/trust" type:objc_opt_class()];
  [v2 addElementWithName:@"RequestType" namespaceURI:@"http://schemas.xmlsoap.org/ws/2005/02/trust" type:objc_opt_class()];

  return v2;
}

@end