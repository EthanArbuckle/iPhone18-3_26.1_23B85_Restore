@interface NSMutableArray(TVPlaybackAdditions)
- (unint64_t)tvp_shuffle;
- (void)tvp_addObjectIfNotNil:()TVPlaybackAdditions;
@end

@implementation NSMutableArray(TVPlaybackAdditions)

- (unint64_t)tvp_shuffle
{
  result = [self count];
  if (result >= 2)
  {
    v3 = result - 1;
    do
    {
      result = [self exchangeObjectAtIndex:arc4random() % v3 withObjectAtIndex:v3];
      --v3;
    }

    while (v3);
  }

  return result;
}

- (void)tvp_addObjectIfNotNil:()TVPlaybackAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end