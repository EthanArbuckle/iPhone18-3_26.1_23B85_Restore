@interface NSString(NSString_XMLEscapingExtensions)
- (id)stringByEscapingXMLEntities;
- (id)stringByUnescapingXMLEntities;
@end

@implementation NSString(NSString_XMLEscapingExtensions)

- (id)stringByEscapingXMLEntities
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@" withString:@"&quot;" options:2 range:{0, objc_msgSend(v1, "length"")}];
  [v1 replaceOccurrencesOfString:@"'" withString:@"&#39;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (id)stringByUnescapingXMLEntities
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&quot;" withString:@" options:2 range:{0, objc_msgSend(v1, "length"")}];
  [v1 replaceOccurrencesOfString:@"&#39;" withString:@"'" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&gt;" withString:@">" options:2 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

@end