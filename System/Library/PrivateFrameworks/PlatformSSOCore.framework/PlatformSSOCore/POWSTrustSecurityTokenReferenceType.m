@interface POWSTrustSecurityTokenReferenceType
+ (id)definition;
@end

@implementation POWSTrustSecurityTokenReferenceType

+ (id)definition
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___POWSTrustSecurityTokenReferenceType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addNamespaceWithURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"];
  [v2 addNamespaceWithURI:@"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd"];
  [v2 addAttributeWithName:@"TokenType" type:objc_opt_class() namespaceURI:@"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd"];
  [v2 addElementWithName:@"KeyIdentifier" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" type:objc_opt_class()];

  return v2;
}

@end