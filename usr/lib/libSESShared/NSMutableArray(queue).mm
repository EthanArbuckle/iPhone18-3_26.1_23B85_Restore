@interface NSMutableArray(queue)
- (id)popFirst;
@end

@implementation NSMutableArray(queue)

- (id)popFirst
{
  if ([self count])
  {
    v2 = [self objectAtIndexedSubscript:0];
    [self removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end