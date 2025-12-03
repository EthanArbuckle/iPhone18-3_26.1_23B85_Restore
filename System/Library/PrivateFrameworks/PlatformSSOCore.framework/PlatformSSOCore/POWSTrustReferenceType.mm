@interface POWSTrustReferenceType
+ (id)definition;
@end

@implementation POWSTrustReferenceType

+ (id)definition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___POWSTrustReferenceType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addElementWithName:@"SecurityTokenReference" namespaceURI:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" type:objc_opt_class()];

  return v2;
}

@end