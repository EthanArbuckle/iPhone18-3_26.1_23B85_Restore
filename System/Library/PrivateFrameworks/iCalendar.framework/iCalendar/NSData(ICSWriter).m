@interface NSData(ICSWriter)
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
@end

@implementation NSData(ICSWriter)

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v7 = a4;
  v5 = ICSEncodeBase64(0, a1);
  if (v5)
  {
    v6 = v5;
    [v7 appendString:v5];
    CFRelease(v6);
  }
}

@end