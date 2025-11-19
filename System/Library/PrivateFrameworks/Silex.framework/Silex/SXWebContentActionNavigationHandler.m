@interface SXWebContentActionNavigationHandler
- (SXWebContentActionNavigationHandler)initWithActionProvider:(id)a3 actionManager:(id)a4;
- (unint64_t)handleRequest:(id)a3;
@end

@implementation SXWebContentActionNavigationHandler

- (SXWebContentActionNavigationHandler)initWithActionProvider:(id)a3 actionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXWebContentActionNavigationHandler;
  v9 = [(SXWebContentActionNavigationHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionProvider, a3);
    objc_storeStrong(&v10->_actionManager, a4);
  }

  return v10;
}

- (unint64_t)handleRequest:(id)a3
{
  v4 = a3;
  v5 = [(SXWebContentActionNavigationHandler *)self actionProvider];
  v6 = [v4 URL];

  v7 = [v5 actionForURL:v6];

  if (v7)
  {
    v8 = [(SXWebContentActionNavigationHandler *)self actionManager];
    [v8 performAction:v7 postActionHandlers:MEMORY[0x1E695E0F0]];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end