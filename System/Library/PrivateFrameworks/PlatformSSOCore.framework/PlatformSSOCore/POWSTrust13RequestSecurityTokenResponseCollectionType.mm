@interface POWSTrust13RequestSecurityTokenResponseCollectionType
+ (id)definition;
@end

@implementation POWSTrust13RequestSecurityTokenResponseCollectionType

+ (id)definition
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___POWSTrust13RequestSecurityTokenResponseCollectionType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addNamespaceWithURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512"];
  [v2 addUnboundedElementWithName:@"RequestSecurityTokenResponse" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" type:objc_opt_class()];

  return v2;
}

@end