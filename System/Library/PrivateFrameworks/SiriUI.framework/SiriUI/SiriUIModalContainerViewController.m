@interface SiriUIModalContainerViewController
- (SiriUIModalContainerViewController)initWithContentViewController:(id)a3;
- (SiriUIModalContainerViewControllerDelegate)delegate;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SiriUIModalContainerViewController

- (SiriUIModalContainerViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriUIModalContainerViewController;
  v6 = [(SiriUIModalContainerViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
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
  v3 = [(SiriUIModalContainerViewController *)self view];
  v4 = [(UIViewController *)self->_contentViewController view];
  [v3 addSubview:v4];

  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(UIViewController *)self->_contentViewController view];
  v4 = [(SiriUIModalContainerViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v7 viewWillDisappear:a3];
  v4 = [(SiriUIModalContainerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SiriUIModalContainerViewController *)self delegate];
    [v6 modalContainerViewControllerViewWillDisappear:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SiriUIModalContainerViewController;
  [(SiriUIModalContainerViewController *)&v7 viewDidDisappear:a3];
  v4 = [(SiriUIModalContainerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SiriUIModalContainerViewController *)self delegate];
    [v6 modalContainerViewControllerViewDidDisappear:self];
  }
}

- (SiriUIModalContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end