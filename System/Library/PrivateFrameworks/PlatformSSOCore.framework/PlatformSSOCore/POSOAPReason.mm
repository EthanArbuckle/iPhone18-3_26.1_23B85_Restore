@interface POSOAPReason
+ (id)definition;
@end

@implementation POSOAPReason

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"Text" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

@end