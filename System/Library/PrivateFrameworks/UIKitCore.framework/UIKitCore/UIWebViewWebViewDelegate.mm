@interface UIWebViewWebViewDelegate
- (UIWebViewWebViewDelegate)initWithUIWebView:(id)view;
- (id)webView:(id)view createWebViewWithRequest:(id)request;
@end

@implementation UIWebViewWebViewDelegate

- (UIWebViewWebViewDelegate)initWithUIWebView:(id)view
{
  v5.receiver = self;
  v5.super_class = UIWebViewWebViewDelegate;
  result = [(UIWebViewWebViewDelegate *)&v5 init];
  if (result)
  {
    result->uiWebView = view;
  }

  return result;
}

- (id)webView:(id)view createWebViewWithRequest:(id)request
{
  v4 = [(UIWebView *)self->uiWebView _browserView:view];

  return [v4 webView];
}

@end