@interface _UIProgressiveBlurContextController
- (_UIProgressiveBlurContextController)initWithPresentedViewController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)viewDidLoad;
@end

@implementation _UIProgressiveBlurContextController

- (_UIProgressiveBlurContextController)initWithPresentedViewController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UIProgressiveBlurContextController;
  v6 = [(UIViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentedViewController, a3);
    v8 = _UISolariumEnabled();
    v9 = 5003;
    if (v8)
    {
      v9 = 9;
    }

    v7->_blurStyle = v9;
    [(UIViewController *)v7 setModalPresentationStyle:4];
    [(UIViewController *)v7 setTransitioningDelegate:v7];
  }

  return v7;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = _UIProgressiveBlurContextController;
  [(UIViewController *)&v17 viewDidLoad];
  if (!self->_presentedViewController)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIProgressiveBlurContextController.m" lineNumber:39 description:@"A view controller to present is required"];
  }

  [(UIViewController *)self addChildViewController:?];
  v4 = [(UIViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIViewController *)self->_presentedViewController view];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(UIViewController *)self view];
  v15 = [(UIViewController *)self->_presentedViewController view];
  [v14 addSubview:v15];

  [(UIViewController *)self->_presentedViewController didMoveToParentViewController:self];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [[_UIProgressiveBlurPresentationAnimator alloc] initForPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [[_UIProgressiveBlurPresentationAnimator alloc] initForPresenting:0];

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[_UIProgressiveBlurPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  [(_UIProgressiveBlurPresentationController *)v9 setBlurStyle:[(_UIProgressiveBlurContextController *)self blurStyle]];

  return v9;
}

@end