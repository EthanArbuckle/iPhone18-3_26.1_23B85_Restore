@interface NSMutableArray(SBQueueAdditions)
- (id)_sb_dequeue;
- (id)_sb_peek;
@end

@implementation NSMutableArray(SBQueueAdditions)

- (id)_sb_dequeue
{
  if ([self count])
  {
    v2 = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_sb_peek
{
  v2 = [self count];
  if (v2)
  {
    v2 = [self objectAtIndex:0];
  }

  return v2;
}

@end