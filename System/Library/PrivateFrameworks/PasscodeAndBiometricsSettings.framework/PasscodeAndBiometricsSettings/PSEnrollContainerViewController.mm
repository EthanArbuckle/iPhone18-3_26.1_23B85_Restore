@interface PSEnrollContainerViewController
- (BOOL)isModalInPresentation;
- (CGSize)preferredContentSize;
- (void)dealloc;
- (void)teardown;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PSEnrollContainerViewController

- (void)dealloc
{
  [(PSEnrollContainerViewController *)self teardown];
  v3.receiver = self;
  v3.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v3 dealloc];
}

- (void)teardown
{
  [(BiometricKitUIEnrollViewController *)self->_enrollController setDelegate:0];
  enrollController = self->_enrollController;
  self->_enrollController = 0;
}

- (BOOL)isModalInPresentation
{
  v2 = [(PSEnrollContainerViewController *)self enrollController];
  v3 = [v2 isModalInPresentation];

  return v3;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v8 viewDidLoad];
  v3 = [(PSEnrollContainerViewController *)self view];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_opt_new();
  [v5 configureWithTransparentBackground];
  v6 = [(PSEnrollContainerViewController *)self navigationItem];
  [v6 setScrollEdgeAppearance:v5];

  v7 = [(PSEnrollContainerViewController *)self navigationItem];
  [v7 setStandardAppearance:v5];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(PSEnrollContainerViewController *)self enrollController];
  v4 = [v3 view];
  v5 = [(PSEnrollContainerViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];
}

- (CGSize)preferredContentSize
{
  v2 = [(PSEnrollContainerViewController *)self enrollController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end