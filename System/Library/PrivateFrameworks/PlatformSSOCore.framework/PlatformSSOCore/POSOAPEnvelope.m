@interface POSOAPEnvelope
+ (id)definition;
@end

@implementation POSOAPEnvelope

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addNamespaceWithURI:@"http://www.w3.org/2003/05/soap-envelope"];
  [v2 addUnboundedElementWithName:@"Header" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];
  [v2 addUnboundedElementWithName:@"Body" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];
  [v2 addNamespaceWithURI:@"http://www.w3.org/2005/08/addressing"];
  [v2 addNamespaceWithURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"];

  return v2;
}

@end