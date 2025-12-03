@interface SWNavigationPreview
- (SWNavigationPreview)initWithViewController:(id)controller navigationHandler:(id)handler URLRequest:(id)request;
- (UIViewController)viewController;
@end

@implementation SWNavigationPreview

- (SWNavigationPreview)initWithViewController:(id)controller navigationHandler:(id)handler URLRequest:(id)request
{
  controllerCopy = controller;
  handlerCopy = handler;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = SWNavigationPreview;
  v11 = [(SWNavigationPreview *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_viewController, controllerCopy);
    objc_storeStrong(&v12->_navigationHandler, handler);
    objc_storeStrong(&v12->_request, request);
  }

  return v12;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end