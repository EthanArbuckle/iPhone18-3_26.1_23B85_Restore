@interface UITabBarItem(SUAdditions)
- (uint64_t)setBadgeValue:()SUAdditions animated:blink:;
@end

@implementation UITabBarItem(SUAdditions)

- (uint64_t)setBadgeValue:()SUAdditions animated:blink:
{
  if (a4)
  {
    [a1 setBadgeValue:0];
  }

  [a1 setAnimatedBadge:a4];
  [a1 setBadgeValue:a3];

  return [a1 setAnimatedBadge:a5];
}

@end