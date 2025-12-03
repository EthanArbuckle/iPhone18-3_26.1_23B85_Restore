@interface WBSWebProcessPlugInPageController
- (WBSWebProcessPlugInPageController)initWithPlugIn:(id)in contextController:(id)controller;
- (void)willDestroyBrowserContextController:(id)controller;
@end

@implementation WBSWebProcessPlugInPageController

- (WBSWebProcessPlugInPageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WBSWebProcessPlugInPageController;
  v9 = [(WBSWebProcessPlugInPageController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webProcessPlugIn, in);
    objc_storeStrong(&v10->_browserContextController, controller);
    [(WKWebProcessPlugInBrowserContextController *)v10->_browserContextController setLoadDelegate:v10];
    v11 = v10;
  }

  return v10;
}

- (void)willDestroyBrowserContextController:(id)controller
{
  [(WKWebProcessPlugInBrowserContextController *)self->_browserContextController setLoadDelegate:0];
  browserContextController = self->_browserContextController;
  self->_browserContextController = 0;
}

@end