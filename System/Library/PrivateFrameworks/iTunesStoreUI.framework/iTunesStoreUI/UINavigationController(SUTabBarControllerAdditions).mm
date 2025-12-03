@interface UINavigationController(SUTabBarControllerAdditions)
- (uint64_t)tabBarControllerDidLongPressTabBarItem:()SUTabBarControllerAdditions;
- (uint64_t)tabBarControllerDidReselectTabBarItem:()SUTabBarControllerAdditions;
@end

@implementation UINavigationController(SUTabBarControllerAdditions)

- (uint64_t)tabBarControllerDidLongPressTabBarItem:()SUTabBarControllerAdditions
{
  topViewController = [self topViewController];

  return [topViewController tabBarControllerDidLongPressTabBarItem:a3];
}

- (uint64_t)tabBarControllerDidReselectTabBarItem:()SUTabBarControllerAdditions
{
  result = [objc_msgSend(self "viewControllers")];
  if (result == 1)
  {
    topViewController = [self topViewController];

    return [topViewController tabBarControllerDidReselectTabBarItem:a3];
  }

  return result;
}

@end