@interface _UIScreenRoutePickerViewController
- (_UIScreenRoutePickerViewController)init;
- (_UIScreenRoutePickerViewController)initWithCoder:(id)coder;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)modalPresentationStyle;
- (void)_addCustomChildViewController:(id)controller;
- (void)_commonInitWithCompletion:(id)completion;
- (void)_setChildViewController:(id)controller;
- (void)dealloc;
- (void)disconnectRoute;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setCurrentOutputDeviceEnabled:(BOOL)enabled;
- (void)setModalPresentationStyle:(int64_t)style;
@end

@implementation _UIScreenRoutePickerViewController

- (_UIScreenRoutePickerViewController)init
{
  v5.receiver = self;
  v5.super_class = _UIScreenRoutePickerViewController;
  v2 = [(UIViewController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(_UIScreenRoutePickerViewController *)v2 _commonInitWithCompletion:&__block_literal_global_317];
  }

  return v3;
}

- (void)dealloc
{
  v3 = self->_childViewController;
  remoteViewController = [(_UIResilientRemoteViewContainerViewController *)v3 remoteViewController];
  serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];
  [serviceViewControllerProxy _invalidate];

  v6 = dispatch_time(0, 15000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___UIScreenRoutePickerViewController_dealloc__block_invoke;
  block[3] = &unk_1E70F3590;
  v10 = v3;
  v7 = v3;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);

  v8.receiver = self;
  v8.super_class = _UIScreenRoutePickerViewController;
  [(UIViewController *)&v8 dealloc];
}

- (void)_commonInitWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_semaphore_create(0);
  remoteViewControllerSemaphore = self->_remoteViewControllerSemaphore;
  self->_remoteViewControllerSemaphore = v5;

  [(UIViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
  view = [(UIViewController *)self view];
  [view setUserInteractionEnabled:0];

  if (_UISolariumEnabled())
  {
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    [popoverPresentationController setDelegate:self];
  }

  else
  {
    v9 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
    objc_initWeak(&location, self);
    v10 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64___UIScreenRoutePickerViewController__commonInitWithCompletion___block_invoke;
    v23[3] = &unk_1E710CB10;
    objc_copyWeak(&v24, &location);
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v23];
    [(UIAlertController *)v9 addAction:v11];

    [(_UIScreenRoutePickerViewController *)self setModalPresentationStyle:[(UIViewController *)v9 modalPresentationStyle]];
    [(UIViewController *)self setModalTransitionStyle:[(UIViewController *)v9 modalTransitionStyle]];
    transitioningDelegate = [(UIViewController *)v9 transitioningDelegate];
    [(UIViewController *)self setTransitioningDelegate:transitioningDelegate];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    alertController = self->_alertController;
    self->_alertController = v9;
  }

  v14 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.UIKit.screenpicker" error:0];
  objc_initWeak(&location, self);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __64___UIScreenRoutePickerViewController__commonInitWithCompletion___block_invoke_2;
  v20 = &unk_1E710CB60;
  objc_copyWeak(&v22, &location);
  v15 = completionCopy;
  v21 = v15;
  v16 = [_UIResilientRemoteViewContainerViewController instantiateWithExtension:v14 completion:&v17];
  [(_UIScreenRoutePickerViewController *)self _setChildViewController:v16, v17, v18, v19, v20];
  [v16 preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (_UIScreenRoutePickerViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIScreenRoutePickerViewController;
  return [(UIViewController *)&v4 initWithCoder:coder];
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  view = [(UIViewController *)self->_childViewController view];
  [view removeFromSuperview];

  [(UIViewController *)self->_childViewController removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, controller);
  childViewController = self->_childViewController;
  if (childViewController)
  {
    alertController = self->_alertController;
    v8 = alertController;
    v9 = v8;
    if (alertController)
    {
      [(UIAlertController *)v8 setContentViewController:childViewController];
      childViewController = v9;
    }

    [(_UIScreenRoutePickerViewController *)self _addCustomChildViewController:childViewController];
  }
}

- (void)_addCustomChildViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:self];
  [(UIViewController *)self addChildViewController:controllerCopy];
  view = [(UIViewController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)disconnectRoute
{
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___UIScreenRoutePickerViewController_disconnectRoute__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setCurrentOutputDeviceEnabled:(BOOL)enabled
{
  v5 = dispatch_get_global_queue(17, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___UIScreenRoutePickerViewController_setCurrentOutputDeviceEnabled___block_invoke;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(v5, v6);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = _UIScreenRoutePickerViewController;
  [(UIViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(UIViewController *)self->_childViewController preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if (self->_alertController)
  {
    return -2;
  }

  else
  {
    return -1;
  }
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if (self->_alertController)
  {
    v5 = [(UIAlertController *)self->_alertController _presentationControllerForPresentedController:controller presentingController:presentingController sourceController:sourceController];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIScreenRoutePickerViewController;
    v5 = [(UIViewController *)&v7 _presentationControllerForPresentedController:controller presentingController:presentingController sourceController:sourceController];
  }

  return v5;
}

- (int64_t)modalPresentationStyle
{
  alertController = self->_alertController;
  if (alertController)
  {
    return [(UIViewController *)alertController modalPresentationStyle];
  }

  else
  {
    return 7;
  }
}

- (void)setModalPresentationStyle:(int64_t)style
{
  if (self->_alertController)
  {
    alertController = self->_alertController;

    [(UIAlertController *)alertController setModalPresentationStyle:style];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = _UIScreenRoutePickerViewController;
    [(UIViewController *)&v6 setModalPresentationStyle:style];
  }
}

@end