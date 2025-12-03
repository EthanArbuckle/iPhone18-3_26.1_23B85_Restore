@interface _UIProgressiveBlurContextController
- (_UIProgressiveBlurContextController)initWithPresentedViewController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)viewDidLoad;
@end

@implementation _UIProgressiveBlurContextController

- (_UIProgressiveBlurContextController)initWithPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = _UIProgressiveBlurContextController;
  v6 = [(UIViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentedViewController, controller);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIProgressiveBlurContextController.m" lineNumber:39 description:@"A view controller to present is required"];
  }

  [(UIViewController *)self addChildViewController:?];
  view = [(UIViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [(UIViewController *)self->_presentedViewController view];
  [view2 setFrame:{v6, v8, v10, v12}];

  view3 = [(UIViewController *)self view];
  view4 = [(UIViewController *)self->_presentedViewController view];
  [view3 addSubview:view4];

  [(UIViewController *)self->_presentedViewController didMoveToParentViewController:self];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[_UIProgressiveBlurPresentationAnimator alloc] initForPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[_UIProgressiveBlurPresentationAnimator alloc] initForPresenting:0];

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[_UIProgressiveBlurPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [(_UIProgressiveBlurPresentationController *)v9 setBlurStyle:[(_UIProgressiveBlurContextController *)self blurStyle]];

  return v9;
}

@end