@interface SXWebContentGenericNavigationHandler
- (SXWebContentGenericNavigationHandler)initWithActionManager:(id)manager URLActionFactory:(id)factory;
- (id)actionForRequest:(id)request;
- (id)previewViewControllerForRequest:(id)request;
- (unint64_t)handleRequest:(id)request;
- (void)commitViewController:(id)controller URLRequest:(id)request;
@end

@implementation SXWebContentGenericNavigationHandler

- (SXWebContentGenericNavigationHandler)initWithActionManager:(id)manager URLActionFactory:(id)factory
{
  managerCopy = manager;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXWebContentGenericNavigationHandler;
  v9 = [(SXWebContentGenericNavigationHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionManager, manager);
    objc_storeStrong(&v10->_URLActionFactory, factory);
  }

  return v10;
}

- (unint64_t)handleRequest:(id)request
{
  v4 = [(SXWebContentGenericNavigationHandler *)self actionForRequest:request];
  if (v4)
  {
    actionManager = [(SXWebContentGenericNavigationHandler *)self actionManager];
    [actionManager performAction:v4 postActionHandlers:MEMORY[0x1E695E0F0]];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)previewViewControllerForRequest:(id)request
{
  v4 = [(SXWebContentGenericNavigationHandler *)self actionForRequest:request];
  actionManager = [(SXWebContentGenericNavigationHandler *)self actionManager];
  v6 = [actionManager previewViewControllerForAction:v4];

  return v6;
}

- (void)commitViewController:(id)controller URLRequest:(id)request
{
  controllerCopy = controller;
  actionManager = [(SXWebContentGenericNavigationHandler *)self actionManager];
  [actionManager commitPreviewViewController:controllerCopy];
}

- (id)actionForRequest:(id)request
{
  requestCopy = request;
  uRLActionFactory = [(SXWebContentGenericNavigationHandler *)self URLActionFactory];
  v6 = [requestCopy URL];

  v7 = [uRLActionFactory actionForURL:v6];

  return v7;
}

@end