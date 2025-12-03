@interface NSPointerArray(UserNotificationsUIKitAdditions)
- (uint64_t)unui_compact;
@end

@implementation NSPointerArray(UserNotificationsUIKitAdditions)

- (uint64_t)unui_compact
{
  result = [self count];
  if (result)
  {
    v3 = result - 1;
    do
    {
      result = [self pointerAtIndex:v3];
      if (!result)
      {
        result = [self removePointerAtIndex:v3];
      }

      --v3;
    }

    while (v3 != -1);
  }

  return result;
}

@end