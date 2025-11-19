@interface POSOAPBody
+ (id)definition;
@end

@implementation POSOAPBody

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setName:@"Fault" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" forType:objc_opt_class()];
  [v2 setName:@"RequestSecurityToken" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" forType:objc_opt_class()];
  [v2 setName:@"RequestSecurityToken" namespaceURI:@"http://schemas.xmlsoap.org/ws/2005/02/trust" forType:objc_opt_class()];
  [v2 setName:@"RequestSecurityTokenResponseCollection" namespaceURI:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512" forType:objc_opt_class()];
  [v2 setName:@"RequestSecurityTokenResponse" namespaceURI:@"http://schemas.xmlsoap.org/ws/2005/02/trust" forType:objc_opt_class()];

  return v2;
}

@end