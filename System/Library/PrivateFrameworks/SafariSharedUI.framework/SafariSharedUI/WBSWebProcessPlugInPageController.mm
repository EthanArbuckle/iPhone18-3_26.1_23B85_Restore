@interface WBSWebProcessPlugInPageController
- (WBSWebProcessPlugInPageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (void)willDestroyBrowserContextController:(id)a3;
@end

@implementation WBSWebProcessPlugInPageController

- (WBSWebProcessPlugInPageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSWebProcessPlugInPageController;
  v9 = [(WBSWebProcessPlugInPageController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webProcessPlugIn, a3);
    objc_storeStrong(&v10->_browserContextController, a4);
    [(WKWebProcessPlugInBrowserContextController *)v10->_browserContextController setLoadDelegate:v10];
    v11 = v10;
  }

  return v10;
}

- (void)willDestroyBrowserContextController:(id)a3
{
  [(WKWebProcessPlugInBrowserContextController *)self->_browserContextController setLoadDelegate:0];
  browserContextController = self->_browserContextController;
  self->_browserContextController = 0;
}

@end