@interface UITabBarItem(SUAdditions)
- (uint64_t)setBadgeValue:()SUAdditions animated:blink:;
@end

@implementation UITabBarItem(SUAdditions)

- (uint64_t)setBadgeValue:()SUAdditions animated:blink:
{
  if (a4)
  {
    [self setBadgeValue:0];
  }

  [self setAnimatedBadge:a4];
  [self setBadgeValue:a3];

  return [self setAnimatedBadge:a5];
}

@end