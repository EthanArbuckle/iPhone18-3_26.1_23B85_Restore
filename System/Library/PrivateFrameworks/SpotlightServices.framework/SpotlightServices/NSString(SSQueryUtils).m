@interface NSString(SSQueryUtils)
- (id)escapedStringForSearchQuery;
@end

@implementation NSString(SSQueryUtils)

- (id)escapedStringForSearchQuery
{
  v1 = [a1 decomposedStringWithCanonicalMapping];
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];
  v4 = [v3 mutableCopy];

  [v4 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

@end