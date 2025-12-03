@interface NSMutableArray(TKQueue)
- (id)tk_dequeueObject;
@end

@implementation NSMutableArray(TKQueue)

- (id)tk_dequeueObject
{
  lastObject = [self lastObject];
  [self removeLastObject];

  return lastObject;
}

@end