@interface POSOAPFault
+ (id)definition;
@end

@implementation POSOAPFault

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"faultactor" namespaceURI:0 type:objc_opt_class()];
  [v2 addElementWithName:@"faultcode" namespaceURI:0 type:objc_opt_class()];
  [v2 addElementWithName:@"faultstring" namespaceURI:0 type:objc_opt_class()];
  [v2 addElementWithName:@"Code" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];
  [v2 addElementWithName:@"Reason" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

@end