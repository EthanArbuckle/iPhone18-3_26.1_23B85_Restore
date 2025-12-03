@interface POWSTrustTimestampType
+ (id)definition;
@end

@implementation POWSTrustTimestampType

+ (id)definition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___POWSTrustTimestampType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addAttributeWithName:@"Id" type:objc_opt_class() namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"];
  [v2 addElementWithName:@"Created" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" type:objc_opt_class()];
  [v2 addElementWithName:@"Expires" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" type:objc_opt_class()];

  return v2;
}

@end