@interface NSMutableDictionary(TVPlaybackAdditions)
- (void)tvp_setObjectIfNotNil:()TVPlaybackAdditions forKey:;
@end

@implementation NSMutableDictionary(TVPlaybackAdditions)

- (void)tvp_setObjectIfNotNil:()TVPlaybackAdditions forKey:
{
  if (a3)
  {
    if (a4)
    {
      return [self setObject:? forKey:?];
    }
  }

  return self;
}

@end