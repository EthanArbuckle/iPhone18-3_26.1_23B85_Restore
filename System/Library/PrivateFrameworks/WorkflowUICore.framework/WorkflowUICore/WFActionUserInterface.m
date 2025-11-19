@interface WFActionUserInterface
- (UIViewController)viewControllerForPresenting;
- (UIWindow)presentationAnchor;
- (WFActionUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (WFActionUserInterfaceDelegate)delegate;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
@end

@implementation WFActionUserInterface

- (WFActionUserInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [(UIViewController *)self->_viewControllerForPresenting presentedViewController];

  if (v4)
  {
    [(UIViewController *)self->_viewControllerForPresenting dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    v5[2]();
  }
}

- (UIWindow)presentationAnchor
{
  viewControllerForPresenting = self->_viewControllerForPresenting;
  if (viewControllerForPresenting)
  {
    v4 = [(UIViewController *)viewControllerForPresenting view];
    [v4 window];
  }

  else
  {
    v4 = [(WFActionUserInterface *)self delegate];
    [v4 presentationAnchorForActionUserInterface:self];
  }
  v5 = ;

  return v5;
}

- (UIViewController)viewControllerForPresenting
{
  viewControllerForPresenting = self->_viewControllerForPresenting;
  if (!viewControllerForPresenting)
  {
    v4 = [(WFActionUserInterface *)self delegate];
    v5 = [v4 viewControllerForPresentingActionUserInterface:self];
    v6 = self->_viewControllerForPresenting;
    self->_viewControllerForPresenting = v5;

    viewControllerForPresenting = self->_viewControllerForPresenting;
  }

  return viewControllerForPresenting;
}

- (WFActionUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFActionUserInterface;
  v9 = [(WFActionUserInterface *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userInterfaceType, a3);
    objc_storeStrong(&v10->_attribution, a4);
    v11 = v10;
  }

  return v10;
}

@end