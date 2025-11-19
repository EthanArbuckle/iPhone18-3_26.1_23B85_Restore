@interface UIWebViewWebViewDelegate
- (UIWebViewWebViewDelegate)initWithUIWebView:(id)a3;
- (id)webView:(id)a3 createWebViewWithRequest:(id)a4;
@end

@implementation UIWebViewWebViewDelegate

- (UIWebViewWebViewDelegate)initWithUIWebView:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWebViewWebViewDelegate;
  result = [(UIWebViewWebViewDelegate *)&v5 init];
  if (result)
  {
    result->uiWebView = a3;
  }

  return result;
}

- (id)webView:(id)a3 createWebViewWithRequest:(id)a4
{
  v4 = [(UIWebView *)self->uiWebView _browserView:a3];

  return [v4 webView];
}

@end