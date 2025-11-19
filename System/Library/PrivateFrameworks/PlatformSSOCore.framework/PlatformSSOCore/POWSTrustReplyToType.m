@interface POWSTrustReplyToType
+ (id)definition;
@end

@implementation POWSTrustReplyToType

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"Address" namespaceURI:@"http://www.w3.org/2005/08/addressing" type:objc_opt_class()];

  return v2;
}

@end