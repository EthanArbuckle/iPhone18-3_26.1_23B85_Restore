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
      [a1 setObject:v7 forKey:v6];
    }

    else
    {
      [a1 removeObjectForKey:v6];
    }
  }
}

@end