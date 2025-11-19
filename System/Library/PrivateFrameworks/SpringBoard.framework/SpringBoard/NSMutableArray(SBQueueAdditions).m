@interface NSMutableArray(SBQueueAdditions)
- (id)_sb_dequeue;
- (id)_sb_peek;
@end

@implementation NSMutableArray(SBQueueAdditions)

- (id)_sb_dequeue
{
  if ([a1 count])
  {
    v2 = [a1 objectAtIndex:0];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_sb_peek
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndex:0];
  }

  return v2;
}

@end