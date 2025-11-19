@interface POSOAPCode
+ (id)definition;
@end

@implementation POSOAPCode

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"Value" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];
  [v2 addElementWithName:@"Subcode" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

@end