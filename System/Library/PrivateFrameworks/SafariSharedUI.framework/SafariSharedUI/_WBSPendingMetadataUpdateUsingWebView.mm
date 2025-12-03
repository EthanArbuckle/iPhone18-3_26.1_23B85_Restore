@interface _WBSPendingMetadataUpdateUsingWebView
- (WKWebView)webView;
- (_WBSPendingMetadataUpdateUsingWebView)initWithWebView:(id)view url:(id)url;
@end

@implementation _WBSPendingMetadataUpdateUsingWebView

- (_WBSPendingMetadataUpdateUsingWebView)initWithWebView:(id)view url:(id)url
{
  viewCopy = view;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = _WBSPendingMetadataUpdateUsingWebView;
  v8 = [(_WBSPendingMetadataUpdateUsingWebView *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView, viewCopy);
    objc_storeStrong(&v9->_url, url);
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