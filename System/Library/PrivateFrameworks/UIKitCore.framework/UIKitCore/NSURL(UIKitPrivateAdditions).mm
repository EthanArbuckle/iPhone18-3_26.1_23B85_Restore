@interface NSURL(UIKitPrivateAdditions)
- (uint64_t)isInternalUIKitURL;
@end

@implementation NSURL(UIKitPrivateAdditions)

- (uint64_t)isInternalUIKitURL
{
  v1 = [a1 scheme];
  v2 = v1;
  if (!v1 || (v3 = 1, [v1 compare:@"doubletap" options:1]))
  {
    v3 = 0;
  }

  return v3;
}

@end