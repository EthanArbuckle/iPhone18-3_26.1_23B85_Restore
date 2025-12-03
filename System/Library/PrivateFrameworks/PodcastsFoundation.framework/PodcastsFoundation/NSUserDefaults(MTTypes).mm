@interface NSUserDefaults(MTTypes)
- (uint64_t)episodeLimitForKey:()MTTypes;
@end

@implementation NSUserDefaults(MTTypes)

- (uint64_t)episodeLimitForKey:()MTTypes
{
  v1 = [self objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    longLongValue = [v1 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

@end