@interface UIKBStackViewController
- (void)addChildViewController:(id)controller;
- (void)loadView;
- (void)removeChildViewController:(id)controller;
@end

@implementation UIKBStackViewController

- (void)loadView
{
  v3 = [UIStackView alloc];
  v4 = [(UIStackView *)v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [(UIViewController *)self setView:v4];
}

- (void)addChildViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = UIKBStackViewController;
  controllerCopy = controller;
  [(UIViewController *)&v7 addChildViewController:controllerCopy];
  v5 = [(UIKBStackViewController *)self stackView:v7.receiver];
  view = [controllerCopy view];
  [v5 addArrangedSubview:view];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)removeChildViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:0];
  stackView = [(UIKBStackViewController *)self stackView];
  view = [controllerCopy view];
  [stackView removeArrangedSubview:view];

  v7.receiver = self;
  v7.super_class = UIKBStackViewController;
  [(UIViewController *)&v7 removeChildViewController:controllerCopy];
}

@end