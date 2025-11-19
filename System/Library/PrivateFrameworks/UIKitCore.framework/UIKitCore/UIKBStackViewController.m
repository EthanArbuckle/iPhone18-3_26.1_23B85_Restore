@interface UIKBStackViewController
- (void)addChildViewController:(id)a3;
- (void)loadView;
- (void)removeChildViewController:(id)a3;
@end

@implementation UIKBStackViewController

- (void)loadView
{
  v3 = [UIStackView alloc];
  v4 = [(UIStackView *)v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [(UIViewController *)self setView:v4];
}

- (void)addChildViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIKBStackViewController;
  v4 = a3;
  [(UIViewController *)&v7 addChildViewController:v4];
  v5 = [(UIKBStackViewController *)self stackView:v7.receiver];
  v6 = [v4 view];
  [v5 addArrangedSubview:v6];

  [v4 didMoveToParentViewController:self];
}

- (void)removeChildViewController:(id)a3
{
  v4 = a3;
  [v4 willMoveToParentViewController:0];
  v5 = [(UIKBStackViewController *)self stackView];
  v6 = [v4 view];
  [v5 removeArrangedSubview:v6];

  v7.receiver = self;
  v7.super_class = UIKBStackViewController;
  [(UIViewController *)&v7 removeChildViewController:v4];
}

@end