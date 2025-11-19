@interface NSString
- (id)in_URLEncodedString;
@end

@implementation NSString

- (id)in_URLEncodedString
{
  v2 = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, self, 0, @"!*'();:@&=+$,/?%#[]", 0x8000100u);

  return v2;
}

@end