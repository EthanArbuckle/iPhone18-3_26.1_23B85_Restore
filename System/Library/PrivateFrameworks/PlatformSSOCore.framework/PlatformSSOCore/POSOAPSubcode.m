@interface POSOAPSubcode
+ (id)definition;
@end

@implementation POSOAPSubcode

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addNamespaceWithURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"];
  [v2 addElementWithName:@"Value" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

@end