@interface PKAccountManageNotificationsViewController
- (PKAccountManageNotificationsViewController)initWithConfiguration:(id)a3;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountManageNotificationsViewController

- (PKAccountManageNotificationsViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountManageNotificationsViewController;
  v5 = [(PKAccountManageNotificationsViewController *)&v11 init];
  if (v5)
  {
    v6 = [[_PKAccountManageNotificationsViewController alloc] initWithConfiguration:v4];
    viewController = v5->_viewController;
    v5->_viewController = v6;

    [(PKAccountManageNotificationsViewController *)v5 addChildViewController:v5->_viewController];
    v8 = [(PKAccountManageNotificationsViewController *)v5 navigationItem];
    v9 = PKLocalizedFeatureString();
    [v8 setTitle:v9];

    [v8 setLargeTitleDisplayMode:2];
    [v8 setBackButtonDisplayMode:2];
  }

  return v5;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKAccountManageNotificationsViewController;
  [(PKAccountManageNotificationsViewController *)&v5 loadView];
  [(_PKAccountManageNotificationsViewController *)self->_viewController didMoveToParentViewController:self];
  v3 = [(_PKAccountManageNotificationsViewController *)self->_viewController view];
  v4 = [(PKAccountManageNotificationsViewController *)self view];
  [v4 addSubview:v3];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKAccountManageNotificationsViewController;
  [(PKAccountManageNotificationsViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(PKAccountManageNotificationsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_PKAccountManageNotificationsViewController *)self->_viewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

@end