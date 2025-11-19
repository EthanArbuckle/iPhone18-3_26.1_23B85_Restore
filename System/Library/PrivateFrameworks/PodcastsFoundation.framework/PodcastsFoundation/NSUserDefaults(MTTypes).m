@interface NSUserDefaults(MTTypes)
- (uint64_t)episodeLimitForKey:()MTTypes;
@end

@implementation NSUserDefaults(MTTypes)

- (uint64_t)episodeLimitForKey:()MTTypes
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 longLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end