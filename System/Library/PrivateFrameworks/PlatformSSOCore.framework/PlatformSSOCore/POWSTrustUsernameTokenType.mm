@interface POWSTrustUsernameTokenType
+ (id)definition;
@end

@implementation POWSTrustUsernameTokenType

+ (id)definition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___POWSTrustUsernameTokenType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addAttributeWithName:@"Id" type:objc_opt_class() namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"];
  [v2 addElementWithName:@"Username" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" type:objc_opt_class()];
  [v2 addElementWithName:@"Password" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" type:objc_opt_class()];

  return v2;
}

@end