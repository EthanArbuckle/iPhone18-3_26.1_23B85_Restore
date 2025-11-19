@interface _UIClickPresentation
- (BOOL)_presentsSelf;
- (_UIClickPresentation)initWithPresentedViewController:(id)a3 presentationController:(id)a4;
@end

@implementation _UIClickPresentation

- (_UIClickPresentation)initWithPresentedViewController:(id)a3 presentationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIClickPresentation;
  v9 = [(_UIClickPresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewController, a3);
    objc_storeStrong(&v10->_presentationController, a4);
  }

  return v10;
}

- (BOOL)_presentsSelf
{
  if (![UIApp _isSpringBoard])
  {
    return 0;
  }

  v3 = [(_UIClickPresentation *)self viewController];
  v4 = [(_UIClickPresentation *)self presentationController];
  v5 = [v4 presentingViewController];
  v6 = v3 == v5;

  return v6;
}

@end