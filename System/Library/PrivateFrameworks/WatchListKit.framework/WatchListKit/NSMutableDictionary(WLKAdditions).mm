@interface NSMutableDictionary(WLKAdditions)
- (void)wlk_setObjectUnlessNil:()WLKAdditions forKey:;
- (void)wlk_setObjectUnlessNilOrEmpty:()WLKAdditions forKey:;
@end

@implementation NSMutableDictionary(WLKAdditions)

- (void)wlk_setObjectUnlessNilOrEmpty:()WLKAdditions forKey:
{
  v7 = a3;
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 count])
  {
    [self setObject:v7 forKey:v6];
  }
}

- (void)wlk_setObjectUnlessNil:()WLKAdditions forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  return self;
}

@end