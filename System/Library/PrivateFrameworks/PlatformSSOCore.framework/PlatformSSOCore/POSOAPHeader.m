@interface POSOAPHeader
+ (id)definition;
@end

@implementation POSOAPHeader

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 setName:@"Action" namespaceURI:@"http://www.w3.org/2005/08/addressing" forType:objc_opt_class()];
  [v2 setName:@"MessageID" namespaceURI:@"http://www.w3.org/2005/08/addressing" forType:objc_opt_class()];
  [v2 setName:@"ReplyTo" namespaceURI:@"http://www.w3.org/2005/08/addressing" forType:objc_opt_class()];
  [v2 setName:@"To" namespaceURI:@"http://www.w3.org/2005/08/addressing" forType:objc_opt_class()];
  [v2 setName:@"Security" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" forType:objc_opt_class()];
  [v2 setName:@"RelatesTo" namespaceURI:@"http://www.w3.org/2005/08/addressing" forType:objc_opt_class()];

  return v2;
}

@end