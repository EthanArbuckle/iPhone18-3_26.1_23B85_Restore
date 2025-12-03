@interface PKAccountManageNotificationsViewController
- (PKAccountManageNotificationsViewController)initWithConfiguration:(id)configuration;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountManageNotificationsViewController

- (PKAccountManageNotificationsViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKAccountManageNotificationsViewController;
  v5 = [(PKAccountManageNotificationsViewController *)&v11 init];
  if (v5)
  {
    v6 = [[_PKAccountManageNotificationsViewController alloc] initWithConfiguration:configurationCopy];
    viewController = v5->_viewController;
    v5->_viewController = v6;

    [(PKAccountManageNotificationsViewController *)v5 addChildViewController:v5->_viewController];
    navigationItem = [(PKAccountManageNotificationsViewController *)v5 navigationItem];
    v9 = PKLocalizedFeatureString();
    [navigationItem setTitle:v9];

    [navigationItem setLargeTitleDisplayMode:2];
    [navigationItem setBackButtonDisplayMode:2];
  }

  return v5;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKAccountManageNotificationsViewController;
  [(PKAccountManageNotificationsViewController *)&v5 loadView];
  [(_PKAccountManageNotificationsViewController *)self->_viewController didMoveToParentViewController:self];
  view = [(_PKAccountManageNotificationsViewController *)self->_viewController view];
  view2 = [(PKAccountManageNotificationsViewController *)self view];
  [view2 addSubview:view];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKAccountManageNotificationsViewController;
  [(PKAccountManageNotificationsViewController *)&v13 viewWillLayoutSubviews];
  view = [(PKAccountManageNotificationsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(_PKAccountManageNotificationsViewController *)self->_viewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

@end