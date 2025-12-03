@interface SXWebContentActionNavigationHandler
- (SXWebContentActionNavigationHandler)initWithActionProvider:(id)provider actionManager:(id)manager;
- (unint64_t)handleRequest:(id)request;
@end

@implementation SXWebContentActionNavigationHandler

- (SXWebContentActionNavigationHandler)initWithActionProvider:(id)provider actionManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SXWebContentActionNavigationHandler;
  v9 = [(SXWebContentActionNavigationHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionProvider, provider);
    objc_storeStrong(&v10->_actionManager, manager);
  }

  return v10;
}

- (unint64_t)handleRequest:(id)request
{
  requestCopy = request;
  actionProvider = [(SXWebContentActionNavigationHandler *)self actionProvider];
  v6 = [requestCopy URL];

  v7 = [actionProvider actionForURL:v6];

  if (v7)
  {
    actionManager = [(SXWebContentActionNavigationHandler *)self actionManager];
    [actionManager performAction:v7 postActionHandlers:MEMORY[0x1E695E0F0]];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end