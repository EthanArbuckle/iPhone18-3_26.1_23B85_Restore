@interface VideosExtrasPresenter
- (CGRect)extrasMenuBarFrame;
- (VideosExtrasPresenter)initWithExtrasContext:(id)context extrasMenuBarFrame:(CGRect)frame;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)dismissExtrasAnimated:(BOOL)animated completion:(id)completion;
- (void)presentExtrasWith:(id)with animated:(BOOL)animated completion:(id)completion;
@end

@implementation VideosExtrasPresenter

- (VideosExtrasPresenter)initWithExtrasContext:(id)context extrasMenuBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = VideosExtrasPresenter;
  v11 = [(VideosExtrasPresenter *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extrasContext, context);
    v12->_extrasMenuBarFrame.origin.x = x;
    v12->_extrasMenuBarFrame.origin.y = y;
    v12->_extrasMenuBarFrame.size.width = width;
    v12->_extrasMenuBarFrame.size.height = height;
    extrasRootViewController = [contextCopy extrasRootViewController];
    [extrasRootViewController setModalPresentationStyle:4];

    extrasRootViewController2 = [contextCopy extrasRootViewController];
    [extrasRootViewController2 setTransitioningDelegate:v12];
  }

  return v12;
}

- (void)presentExtrasWith:(id)with animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  withCopy = with;
  completionCopy = completion;
  if (withCopy)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      extrasContext = [(VideosExtrasPresenter *)self extrasContext];
      extrasRootViewController = [extrasContext extrasRootViewController];
      [extrasRootViewController _setIgnoreAppSupportedOrientations:1];
    }

    extrasContext2 = [(VideosExtrasPresenter *)self extrasContext];
    extrasRootViewController2 = [extrasContext2 extrasRootViewController];
    [withCopy presentViewController:extrasRootViewController2 animated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)dismissExtrasAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  extrasContext = [(VideosExtrasPresenter *)self extrasContext];
  extrasRootViewController = [extrasContext extrasRootViewController];
  presentingViewController = [extrasRootViewController presentingViewController];

  if (presentingViewController)
  {
    extrasContext2 = [(VideosExtrasPresenter *)self extrasContext];
    extrasRootViewController2 = [extrasContext2 extrasRootViewController];
    presentingViewController2 = [extrasRootViewController2 presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[VideosTransitionFadeAnimator alloc] initWithTransitionType:0 andDuration:0.3];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[VideosTransitionFadeAnimator alloc] initWithTransitionType:1 andDuration:0.3];

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [VideosExtrasPresentationController alloc];
  extrasContext = [(VideosExtrasPresenter *)self extrasContext];
  extrasRootViewController = [extrasContext extrasRootViewController];
  extrasMenuBarView = [extrasRootViewController extrasMenuBarView];
  [(VideosExtrasPresenter *)self extrasMenuBarFrame];
  v13 = [(VideosExtrasPresentationController *)v9 initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy extrasMenuBarView:extrasMenuBarView extrasmenuBarFrame:?];

  return v13;
}

- (CGRect)extrasMenuBarFrame
{
  x = self->_extrasMenuBarFrame.origin.x;
  y = self->_extrasMenuBarFrame.origin.y;
  width = self->_extrasMenuBarFrame.size.width;
  height = self->_extrasMenuBarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end