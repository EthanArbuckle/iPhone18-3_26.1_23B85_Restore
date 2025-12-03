@interface UIViewController(OFUIViewControllerExtensions)
- (uint64_t)addChildViewControllerInstantly:()OFUIViewControllerExtensions;
- (uint64_t)addChildViewControllerInstantly:()OFUIViewControllerExtensions toView:;
- (uint64_t)ancestorViewControllerOfClass:()OFUIViewControllerExtensions;
- (uint64_t)removeFromParentViewControllerInstantly;
- (uint64_t)switchViewController:()OFUIViewControllerExtensions toViewController:duration:options:animations:completion:;
@end

@implementation UIViewController(OFUIViewControllerExtensions)

- (uint64_t)addChildViewControllerInstantly:()OFUIViewControllerExtensions
{
  view = [self view];

  return [self addChildViewControllerInstantly:a3 toView:view];
}

- (uint64_t)addChildViewControllerInstantly:()OFUIViewControllerExtensions toView:
{
  [self addChildViewController:?];
  [a4 bounds];
  [objc_msgSend(a3 "view")];
  [objc_msgSend(a3 "view")];
  [a4 addSubview:{objc_msgSend(a3, "view")}];

  return [a3 didMoveToParentViewController:self];
}

- (uint64_t)removeFromParentViewControllerInstantly
{
  [self willMoveToParentViewController:0];
  [self removeFromParentViewController];
  view = [self view];

  return [view removeFromSuperview];
}

- (uint64_t)switchViewController:()OFUIViewControllerExtensions toViewController:duration:options:animations:completion:
{
  [self addChildViewController:a5];
  [objc_msgSend(a5 "view")];
  [objc_msgSend(self "view")];
  [objc_msgSend(a5 "view")];
  [a4 willMoveToParentViewController:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __127__UIViewController_OFUIViewControllerExtensions__switchViewController_toViewController_duration_options_animations_completion___block_invoke;
  v20[3] = &unk_279C89E50;
  v20[4] = a5;
  v20[5] = self;
  v20[6] = a4;
  v20[7] = a8;
  return [self transitionFromViewController:a4 toViewController:a5 duration:a6 options:a7 animations:v20 completion:a2];
}

- (uint64_t)ancestorViewControllerOfClass:()OFUIViewControllerExtensions
{
  parentViewController = [self parentViewController];
  if (!parentViewController || (objc_opt_isKindOfClass() & 1) != 0)
  {
    return parentViewController;
  }

  return [parentViewController ancestorViewControllerOfClass:a3];
}

@end