@interface PKAccountDocumentsViewController
- (PKAccountDocumentsViewController)initWithConfiguration:(id)configuration;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountDocumentsViewController

- (PKAccountDocumentsViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKAccountDocumentsViewController;
  v5 = [(PKAccountDocumentsViewController *)&v11 init];
  if (v5)
  {
    v6 = [[_PKAccountDocumentsViewController alloc] initWithConfiguration:configurationCopy];
    viewController = v5->_viewController;
    v5->_viewController = v6;

    [(PKAccountDocumentsViewController *)v5 addChildViewController:v5->_viewController];
    navigationItem = [(PKAccountDocumentsViewController *)v5 navigationItem];
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
  v5.super_class = PKAccountDocumentsViewController;
  [(PKAccountDocumentsViewController *)&v5 loadView];
  [(_PKAccountDocumentsViewController *)self->_viewController didMoveToParentViewController:self];
  view = [(_PKAccountDocumentsViewController *)self->_viewController view];
  view2 = [(PKAccountDocumentsViewController *)self view];
  [view2 addSubview:view];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKAccountDocumentsViewController;
  [(PKAccountDocumentsViewController *)&v13 viewWillLayoutSubviews];
  view = [(PKAccountDocumentsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(_PKAccountDocumentsViewController *)self->_viewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

@end