@interface SVVideoAdViewControllerProvider
- (SVVideoAdViewControllerProvider)initWithViewControllerProvider:(id)a3;
- (SVVideoAdViewControllerProviding)viewControllerProvider;
- (UIViewController)viewControllerForModalPresentation;
@end

@implementation SVVideoAdViewControllerProvider

- (SVVideoAdViewControllerProvider)initWithViewControllerProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SVVideoAdViewControllerProvider;
  v5 = [(SVVideoAdViewControllerProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewControllerProvider, v4);
  }

  return v6;
}

- (UIViewController)viewControllerForModalPresentation
{
  v2 = [(SVVideoAdViewControllerProvider *)self viewControllerProvider];
  v3 = [v2 viewControllerForModalPresentation];

  return v3;
}

- (SVVideoAdViewControllerProviding)viewControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerProvider);

  return WeakRetained;
}

@end