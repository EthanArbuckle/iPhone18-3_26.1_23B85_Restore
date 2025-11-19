@interface SWNavigationPreview
- (SWNavigationPreview)initWithViewController:(id)a3 navigationHandler:(id)a4 URLRequest:(id)a5;
- (UIViewController)viewController;
@end

@implementation SWNavigationPreview

- (SWNavigationPreview)initWithViewController:(id)a3 navigationHandler:(id)a4 URLRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SWNavigationPreview;
  v11 = [(SWNavigationPreview *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_viewController, v8);
    objc_storeStrong(&v12->_navigationHandler, a4);
    objc_storeStrong(&v12->_request, a5);
  }

  return v12;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end