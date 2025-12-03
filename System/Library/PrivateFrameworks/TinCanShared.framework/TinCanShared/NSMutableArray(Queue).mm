@interface NSMutableArray(Queue)
- (id)dequeue;
- (id)enqueue:()Queue;
@end

@implementation NSMutableArray(Queue)

- (id)enqueue:()Queue
{
  [self addObject:?];
  result = [self count];
  if (result >= 0x21)
  {
    return [self dequeue];
  }

  return result;
}

- (id)dequeue
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