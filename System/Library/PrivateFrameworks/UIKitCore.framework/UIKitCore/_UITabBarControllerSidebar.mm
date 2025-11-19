@interface _UITabBarControllerSidebar
- (void)_scrollToHeaderAnimated:(BOOL)a3;
- (void)_scrollToTab:(id)a3 atPosition:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation _UITabBarControllerSidebar

- (void)_scrollToHeaderAnimated:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _UITabBarControllerSidebar;
  [(UITabBarControllerSidebar *)&v3 _scrollToHeaderAnimated:a3];
}

- (void)_scrollToTab:(id)a3 atPosition:(unint64_t)a4 animated:(BOOL)a5
{
  v5.receiver = self;
  v5.super_class = _UITabBarControllerSidebar;
  [(UITabBarControllerSidebar *)&v5 _scrollToTab:a3 atPosition:a4 animated:a5];
}

@end