@interface WFActionUserInterface
- (UIViewController)viewControllerForPresenting;
- (UIWindow)presentationAnchor;
- (WFActionUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (WFActionUserInterfaceDelegate)delegate;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
@end

@implementation WFActionUserInterface

- (WFActionUserInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  presentedViewController = [(UIViewController *)self->_viewControllerForPresenting presentedViewController];

  if (presentedViewController)
  {
    [(UIViewController *)self->_viewControllerForPresenting dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  else
  {
    handlerCopy[2]();
  }
}

- (UIWindow)presentationAnchor
{
  viewControllerForPresenting = self->_viewControllerForPresenting;
  if (viewControllerForPresenting)
  {
    view = [(UIViewController *)viewControllerForPresenting view];
    [view window];
  }

  else
  {
    view = [(WFActionUserInterface *)self delegate];
    [view presentationAnchorForActionUserInterface:self];
  }
  v5 = ;

  return v5;
}

- (UIViewController)viewControllerForPresenting
{
  viewControllerForPresenting = self->_viewControllerForPresenting;
  if (!viewControllerForPresenting)
  {
    delegate = [(WFActionUserInterface *)self delegate];
    v5 = [delegate viewControllerForPresentingActionUserInterface:self];
    v6 = self->_viewControllerForPresenting;
    self->_viewControllerForPresenting = v5;

    viewControllerForPresenting = self->_viewControllerForPresenting;
  }

  return viewControllerForPresenting;
}

- (WFActionUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  v13.receiver = self;
  v13.super_class = WFActionUserInterface;
  v9 = [(WFActionUserInterface *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userInterfaceType, type);
    objc_storeStrong(&v10->_attribution, attribution);
    v11 = v10;
  }

  return v10;
}

@end