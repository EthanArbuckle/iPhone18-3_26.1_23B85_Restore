@interface NSString(SSQueryUtils)
- (id)escapedStringForSearchQuery;
@end

@implementation NSString(SSQueryUtils)

- (id)escapedStringForSearchQuery
{
  decomposedStringWithCanonicalMapping = [self decomposedStringWithCanonicalMapping];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [decomposedStringWithCanonicalMapping stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

@end