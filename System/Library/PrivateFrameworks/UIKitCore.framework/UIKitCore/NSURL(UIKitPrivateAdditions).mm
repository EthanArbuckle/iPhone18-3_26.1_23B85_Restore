@interface NSURL(UIKitPrivateAdditions)
- (uint64_t)isInternalUIKitURL;
@end

@implementation NSURL(UIKitPrivateAdditions)

- (uint64_t)isInternalUIKitURL
{
  scheme = [self scheme];
  v2 = scheme;
  if (!scheme || (v3 = 1, [scheme compare:@"doubletap" options:1]))
  {
    v3 = 0;
  }

  return v3;
}

@end