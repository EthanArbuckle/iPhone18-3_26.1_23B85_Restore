@interface PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController;
  [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)&v7 loadView];
  view = [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)self view];
  [view setAutoresizesSubviews:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  indicator = self->_indicator;
  self->_indicator = v5;

  [view addSubview:self->_indicator];
  [(UIActivityIndicatorView *)self->_indicator startAnimating];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController;
  [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)self view];
  [view bounds];
  [view safeAreaInsets];
  indicator = self->_indicator;
  [(UIActivityIndicatorView *)indicator frame];
  PKSizeAlignedInRect();
  [(UIActivityIndicatorView *)indicator setFrame:?];
}

@end