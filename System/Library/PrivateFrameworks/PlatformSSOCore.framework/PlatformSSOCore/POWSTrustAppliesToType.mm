@interface POWSTrustAppliesToType
+ (id)definition;
@end

@implementation POWSTrustAppliesToType

+ (id)definition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___POWSTrustAppliesToType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addNamespaceWithURI:@"http://schemas.xmlsoap.org/ws/2004/09/policy"];
  [v2 addElementWithName:@"EndpointReference" namespaceURI:@"http://www.w3.org/2005/08/addressing" type:objc_opt_class()];

  return v2;
}

@end