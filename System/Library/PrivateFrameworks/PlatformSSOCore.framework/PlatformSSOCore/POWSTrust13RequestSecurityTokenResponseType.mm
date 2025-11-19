@interface POWSTrust13RequestSecurityTokenResponseType
+ (id)definition;
@end

@implementation POWSTrust13RequestSecurityTokenResponseType

+ (id)definition
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___POWSTrust13RequestSecurityTokenResponseType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addNamespaceWithURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512"];
  [v2 addElementWithName:@"Lifetime" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];
  [v2 addElementWithName:@"AppliesTo" namespaceURI:@"http://schemas.xmlsoap.org/ws/2004/09/policy" type:objc_opt_class()];
  [v2 addElementWithName:@"RequestedSecurityToken" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class() maxOccurs:1 minOccurs:1];
  [v2 addElementWithName:@"RequestedAttachedReference" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];
  [v2 addElementWithName:@"RequestedUnattachedReference" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];
  [v2 addElementWithName:@"TokenType" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];
  [v2 addElementWithName:@"RequestType" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];
  [v2 addElementWithName:@"KeyType" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];

  return v2;
}

@end