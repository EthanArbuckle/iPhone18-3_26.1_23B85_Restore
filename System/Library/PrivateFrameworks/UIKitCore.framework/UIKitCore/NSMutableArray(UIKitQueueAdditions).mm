@interface NSMutableArray(UIKitQueueAdditions)
- (id)_ui_dequeue;
- (id)_ui_peek;
@end

@implementation NSMutableArray(UIKitQueueAdditions)

- (id)_ui_dequeue
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

- (id)_ui_peek
{
  v2 = [self count];
  if (v2)
  {
    v2 = [self objectAtIndex:0];
  }

  return v2;
}

@end