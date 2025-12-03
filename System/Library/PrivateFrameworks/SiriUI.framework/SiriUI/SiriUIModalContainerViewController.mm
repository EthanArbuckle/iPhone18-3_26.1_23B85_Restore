@interface SiriUIModalContainerViewController
- (SiriUIModalContainerViewController)initWithContentViewController:(id)controller;
- (SiriUIModalContainerViewControllerDelegate)delegate;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SiriUIModalContainerViewController

- (SiriUIModalContainerViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SiriUIModalContainerViewController;
  v6 = [(SiriUIModalContainerViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, controller);
    [(SiriUIModalContainerViewController *)v7 setModalPresentationStyle:4];
  }

  return v7;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v5 loadView];
  [(SiriUIModalContainerViewController *)self addChildViewController:self->_contentViewController];
  view = [(SiriUIModalContainerViewController *)self view];
  view2 = [(UIViewController *)self->_contentViewController view];
  [view addSubview:view2];

  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v5 viewDidLayoutSubviews];
  view = [(UIViewController *)self->_contentViewController view];
  view2 = [(SiriUIModalContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v7 viewWillDisappear:disappear];
  delegate = [(SiriUIModalContainerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SiriUIModalContainerViewController *)self delegate];
    [delegate2 modalContainerViewControllerViewWillDisappear:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v7 viewDidDisappear:disappear];
  delegate = [(SiriUIModalContainerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SiriUIModalContainerViewController *)self delegate];
    [delegate2 modalContainerViewControllerViewDidDisappear:self];
  }
}

- (SiriUIModalContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end