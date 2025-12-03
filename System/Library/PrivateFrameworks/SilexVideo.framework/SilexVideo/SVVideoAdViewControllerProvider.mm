@interface SVVideoAdViewControllerProvider
- (SVVideoAdViewControllerProvider)initWithViewControllerProvider:(id)provider;
- (SVVideoAdViewControllerProviding)viewControllerProvider;
- (UIViewController)viewControllerForModalPresentation;
@end

@implementation SVVideoAdViewControllerProvider

- (SVVideoAdViewControllerProvider)initWithViewControllerProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = SVVideoAdViewControllerProvider;
  v5 = [(SVVideoAdViewControllerProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewControllerProvider, providerCopy);
  }

  return v6;
}

- (UIViewController)viewControllerForModalPresentation
{
  viewControllerProvider = [(SVVideoAdViewControllerProvider *)self viewControllerProvider];
  viewControllerForModalPresentation = [viewControllerProvider viewControllerForModalPresentation];

  return viewControllerForModalPresentation;
}

- (SVVideoAdViewControllerProviding)viewControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerProvider);

  return WeakRetained;
}

@end