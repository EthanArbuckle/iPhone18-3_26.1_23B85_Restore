@interface NSPointerArray(UserNotificationsUIKitAdditions)
- (uint64_t)unui_compact;
@end

@implementation NSPointerArray(UserNotificationsUIKitAdditions)

- (uint64_t)unui_compact
{
  result = [a1 count];
  if (result)
  {
    v3 = result - 1;
    do
    {
      result = [a1 pointerAtIndex:v3];
      if (!result)
      {
        result = [a1 removePointerAtIndex:v3];
      }

      --v3;
    }

    while (v3 != -1);
  }

  return result;
}

@end