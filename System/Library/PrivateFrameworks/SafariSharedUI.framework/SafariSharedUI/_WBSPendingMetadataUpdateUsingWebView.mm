@interface _WBSPendingMetadataUpdateUsingWebView
- (WKWebView)webView;
- (_WBSPendingMetadataUpdateUsingWebView)initWithWebView:(id)a3 url:(id)a4;
@end

@implementation _WBSPendingMetadataUpdateUsingWebView

- (_WBSPendingMetadataUpdateUsingWebView)initWithWebView:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _WBSPendingMetadataUpdateUsingWebView;
  v8 = [(_WBSPendingMetadataUpdateUsingWebView *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView, v6);
    objc_storeStrong(&v9->_url, a4);
    v10 = v9;
  }

  return v9;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end