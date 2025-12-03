@interface _UITabBarControllerSidebar
- (void)_scrollToHeaderAnimated:(BOOL)animated;
- (void)_scrollToTab:(id)tab atPosition:(unint64_t)position animated:(BOOL)animated;
@end

@implementation _UITabBarControllerSidebar

- (void)_scrollToHeaderAnimated:(BOOL)animated
{
  v3.receiver = self;
  v3.super_class = _UITabBarControllerSidebar;
  [(UITabBarControllerSidebar *)&v3 _scrollToHeaderAnimated:animated];
}

- (void)_scrollToTab:(id)tab atPosition:(unint64_t)position animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = _UITabBarControllerSidebar;
  [(UITabBarControllerSidebar *)&v5 _scrollToTab:tab atPosition:position animated:animated];
}

@end