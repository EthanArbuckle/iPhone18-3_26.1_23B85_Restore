@interface NSString(LPExtras)
- (id)_lp_userVisibleHost;
@end

@implementation NSString(LPExtras)

- (id)_lp_userVisibleHost
{
  v1 = encodeHostName(self);
  v2 = decodeHostName(v1);

  return v2;
}

@end