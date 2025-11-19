@interface POWSTrustEndpointReferenceType
+ (id)definition;
@end

@implementation POWSTrustEndpointReferenceType

+ (id)definition
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___POWSTrustEndpointReferenceType;
  v2 = objc_msgSendSuper2(&v4, sel_definition);
  [v2 addElementWithName:@"Address" namespaceURI:@"http://www.w3.org/2005/08/addressing" type:objc_opt_class()];

  return v2;
}

@end