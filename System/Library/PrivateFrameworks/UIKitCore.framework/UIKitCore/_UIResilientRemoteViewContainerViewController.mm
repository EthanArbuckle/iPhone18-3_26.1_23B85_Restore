@interface _UIResilientRemoteViewContainerViewController
+ (id)instantiateWithExtension:(id)extension completion:(id)completion;
- (CGRect)_defaultInitialViewFrame;
- (_UIResilientRemoteViewContainerViewController)initWithExtension:(id)extension completion:(id)completion;
- (void)_displayError:(id)error;
- (void)_displayRemoteViewController;
- (void)dealloc;
- (void)endDelayingDisplayOfRemoteController;
- (void)invalidate;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setContainedViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation _UIResilientRemoteViewContainerViewController

- (CGRect)_defaultInitialViewFrame
{
  _screen = [(UIViewController *)self _screen];
  if (!__SplashBoardOverrideStatusBarOrientation)
  {
    [UIApp _safeInterfaceOrientationForNoWindow];
  }

  [_screen _boundsForInterfaceOrientation:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (id)instantiateWithExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  extensionCopy = extension;
  v8 = [[self alloc] initWithExtension:extensionCopy completion:completionCopy];

  return v8;
}

- (_UIResilientRemoteViewContainerViewController)initWithExtension:(id)extension completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = _UIResilientRemoteViewContainerViewController;
  v8 = [(UIViewController *)&v21 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(_UIResilientRemoteViewContainerViewController *)v8 setExtension:extensionCopy];
    v10 = objc_alloc_init(_UIWaitingForRemoteViewContainerViewController);
    [(_UIResilientRemoteViewContainerViewController *)v9 setWaitingController:v10];

    waitingController = [(_UIResilientRemoteViewContainerViewController *)v9 waitingController];
    [(_UIResilientRemoteViewContainerViewController *)v9 setContainedViewController:waitingController];

    if (extensionCopy)
    {
      [(UIViewController *)v9 _beginDelayingPresentation:0 cancellationHandler:3.0];
      objc_initWeak(&location, v9);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78___UIResilientRemoteViewContainerViewController_initWithExtension_completion___block_invoke;
      v17[3] = &unk_1E7102760;
      objc_copyWeak(&v19, &location);
      v18 = completionCopy;
      [extensionCopy instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v13 = _UINSLocalizedStringWithDefaultValue(@"The requested app extension could not be found", @"The requested app extension could not be found");
      v23[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v15 = [v12 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v14];

      [(_UIResilientRemoteViewContainerViewController *)v9 _displayError:v15];
    }
  }

  return v9;
}

- (void)_displayRemoteViewController
{
  [(_UIResilientRemoteViewContainerViewController *)self setWaitingController:0];
  [(_UIResilientRemoteViewContainerViewController *)self setContainedViewController:self->_remoteViewController];
  [(UIViewController *)self->_remoteViewController preferredContentSize];

  [(UIViewController *)self setPreferredContentSize:?];
}

- (void)endDelayingDisplayOfRemoteController
{
  if (self->_delayingDisplayOfRemoteView)
  {
    [(_UIResilientRemoteViewContainerViewController *)self _displayRemoteViewController];
  }

  self->_delayingDisplayOfRemoteView = 0;
}

- (void)setContainedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_containedViewController;
  objc_storeStrong(&self->_containedViewController, controller);
  [(UIViewController *)self->_containedViewController preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
  [(UIViewController *)self addChildViewController:self->_containedViewController];
  v6 = (*&self->super._viewControllerFlags & 3) - 1;
  if (v6 <= 1)
  {
    [(UIViewController *)self->_containedViewController beginAppearanceTransition:1 animated:0];
    [(UIViewController *)v5 beginAppearanceTransition:0 animated:0];
  }

  [(UIViewController *)v5 willMoveToParentViewController:0];
  [(UIViewController *)v5 removeFromParentViewController];
  view = [(UIViewController *)self view];
  view2 = [(UIViewController *)self->_containedViewController view];
  [view addSubview:view2];

  view3 = [(UIViewController *)v5 view];
  [view3 removeFromSuperview];

  containedViewController = self->_containedViewController;
  if (v6 > 1)
  {
    [(UIViewController *)containedViewController didMoveToParentViewController:self];
  }

  else
  {
    [(UIViewController *)containedViewController endAppearanceTransition];
    [(UIViewController *)self->_containedViewController didMoveToParentViewController:self];
    [(UIViewController *)v5 endAppearanceTransition];
  }
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = _UIResilientRemoteViewContainerViewController;
  [(UIViewController *)&v13 viewWillLayoutSubviews];
  view = [(UIViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(UIViewController *)self->_containedViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)dealloc
{
  [(_UIResilientRemoteViewContainerViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UIResilientRemoteViewContainerViewController;
  [(UIViewController *)&v3 dealloc];
}

- (void)invalidate
{
  if (self->_extensionRequestIdentifier)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
    extensionRequestIdentifier = self->_extensionRequestIdentifier;
    self->_extensionRequestIdentifier = 0;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _UIResilientRemoteViewContainerViewController;
  [(UIViewController *)&v6 viewDidAppear:appear];
  errorViewController = [(_UIResilientRemoteViewContainerViewController *)self errorViewController];

  if (errorViewController)
  {
    errorViewController2 = [(_UIResilientRemoteViewContainerViewController *)self errorViewController];
    [(UIViewController *)self presentViewController:errorViewController2 animated:1 completion:0];
  }
}

- (void)_displayError:(id)error
{
  errorCopy = error;
  v5 = _UINSLocalizedStringWithDefaultValue(@"Internal error", @"Internal error");
  localizedDescription = [errorCopy localizedDescription];

  v7 = [UIAlertController alertControllerWithTitle:v5 message:localizedDescription preferredStyle:1];

  v8 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UIResilientRemoteViewContainerViewController__displayError___block_invoke;
  v11[3] = &unk_1E70F59B0;
  v11[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v11];
  [v7 addAction:v9];

  presentingViewController = [(UIViewController *)self presentingViewController];

  if (presentingViewController)
  {
    [(UIViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(_UIResilientRemoteViewContainerViewController *)self setErrorViewController:v7];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = _UIResilientRemoteViewContainerViewController;
  [(UIViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(UIViewController *)self->_containedViewController preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
}

@end