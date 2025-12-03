@interface SWWeakURLSchemeHandler
- (SWWeakURLSchemeHandler)initWithURLSchemeHandler:(id)handler;
- (WKURLSchemeHandler)URLSchemeHandler;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation SWWeakURLSchemeHandler

- (SWWeakURLSchemeHandler)initWithURLSchemeHandler:(id)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = SWWeakURLSchemeHandler;
  v5 = [(SWWeakURLSchemeHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_URLSchemeHandler, handlerCopy);
  }

  return v6;
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  viewCopy = view;
  uRLSchemeHandler = [(SWWeakURLSchemeHandler *)self URLSchemeHandler];
  [uRLSchemeHandler webView:viewCopy startURLSchemeTask:taskCopy];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  taskCopy = task;
  viewCopy = view;
  uRLSchemeHandler = [(SWWeakURLSchemeHandler *)self URLSchemeHandler];
  [uRLSchemeHandler webView:viewCopy stopURLSchemeTask:taskCopy];
}

- (WKURLSchemeHandler)URLSchemeHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_URLSchemeHandler);

  return WeakRetained;
}

@end