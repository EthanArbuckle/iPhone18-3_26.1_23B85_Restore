@interface UITabBarController(VideosUICore)
- (id)init;
- (void)setVuiViewControllers:()VideosUICore;
@end

@implementation UITabBarController(VideosUICore)

- (id)init
{
  v2.receiver = a1;
  v2.super_class = &off_2881033E8;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (void)setVuiViewControllers:()VideosUICore
{
  if (a3)
  {
    return [a1 setViewControllers:?];
  }

  return a1;
}

@end