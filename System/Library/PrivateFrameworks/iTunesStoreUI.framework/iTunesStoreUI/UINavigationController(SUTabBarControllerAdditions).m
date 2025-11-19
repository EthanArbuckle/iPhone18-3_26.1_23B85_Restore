@interface UINavigationController(SUTabBarControllerAdditions)
- (uint64_t)tabBarControllerDidLongPressTabBarItem:()SUTabBarControllerAdditions;
- (uint64_t)tabBarControllerDidReselectTabBarItem:()SUTabBarControllerAdditions;
@end

@implementation UINavigationController(SUTabBarControllerAdditions)

- (uint64_t)tabBarControllerDidLongPressTabBarItem:()SUTabBarControllerAdditions
{
  v4 = [a1 topViewController];

  return [v4 tabBarControllerDidLongPressTabBarItem:a3];
}

- (uint64_t)tabBarControllerDidReselectTabBarItem:()SUTabBarControllerAdditions
{
  result = [objc_msgSend(a1 "viewControllers")];
  if (result == 1)
  {
    v6 = [a1 topViewController];

    return [v6 tabBarControllerDidReselectTabBarItem:a3];
  }

  return result;
}

@end