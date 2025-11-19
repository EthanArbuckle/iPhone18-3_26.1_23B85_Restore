@interface NSMutableArray(TKQueue)
- (id)tk_dequeueObject;
@end

@implementation NSMutableArray(TKQueue)

- (id)tk_dequeueObject
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

@end