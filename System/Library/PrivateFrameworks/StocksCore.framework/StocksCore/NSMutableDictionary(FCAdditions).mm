@interface NSMutableDictionary(FCAdditions)
- (void)scw_safelySetObjectAllowingNil:()FCAdditions forKey:;
@end

@implementation NSMutableDictionary(FCAdditions)

- (void)scw_safelySetObjectAllowingNil:()FCAdditions forKey:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if (v7)
    {
      [self setObject:v7 forKey:v6];
    }

    else
    {
      [self removeObjectForKey:v6];
    }
  }
}

@end