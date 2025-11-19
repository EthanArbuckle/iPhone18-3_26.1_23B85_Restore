@interface NSMutableArray(queue)
- (id)popFirst;
@end

@implementation NSMutableArray(queue)

- (id)popFirst
{
  if ([a1 count])
  {
    v2 = [a1 objectAtIndexedSubscript:0];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end