@interface RUIWebView
- (BOOL)_isScrollEnabled;
- (id)delegate;
- (id)scriptForDisableMagnification;
- (id)webView;
- (void)dealloc;
- (void)setHtml:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation RUIWebView

- (id)webView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_opt_new();
    v5 = [(RUIWebView *)self scriptForDisableMagnification];
    [v4 addUserScript:v5];

    v6 = objc_alloc(MEMORY[0x277CE38B0]);
    v7 = [(RUIWebView *)self userStyleSheet];
    v8 = [v6 initWithSource:v7 forMainFrameOnly:0];

    [v4 _addUserStyleSheet:v8];
    v9 = objc_opt_new();
    [v9 setUserContentController:v4];
    [v9 setDataDetectorTypes:0];
    [v9 setAllowsInlineMediaPlayback:1];
    [v9 setMediaTypesRequiringUserActionForPlayback:1];
    v10 = objc_opt_new();
    [v10 _setTextAutosizingEnabled:0];
    [v9 setPreferences:v10];
    +[RUIPlatform assertWebkitAllowed];
    v11 = [RUIPaddingWebview alloc];
    v12 = [(RUIPaddingWebview *)v11 initWithFrame:v9 configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v13 = self->_webView;
    self->_webView = v12;

    [(WKWebView *)self->_webView setOpaque:0];
    [(WKWebView *)self->_webView setNavigationDelegate:self];
    v14 = [(WKWebView *)self->_webView scrollView];
    [v14 _setShowsBackgroundShadow:0];

    html = self->_html;
    if (html)
    {
      v16 = [(WKWebView *)self->_webView loadHTMLString:html baseURL:self->_baseURL];
    }

    webView = self->_webView;
  }

  return webView;
}

- (BOOL)_isScrollEnabled
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"scrollEnabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHtml:(id)a3
{
  v10 = a3;
  if (([v10 isEqualToString:self->_html] & 1) == 0)
  {
    v4 = [v10 copy];
    html = self->_html;
    self->_html = v4;

    baseURL = self->_baseURL;
    if (!baseURL)
    {
      v7 = +[RUIHTTPRequest safeBaseURL];
      v8 = self->_baseURL;
      self->_baseURL = v7;

      baseURL = self->_baseURL;
    }

    v9 = [(WKWebView *)self->_webView loadHTMLString:v10 baseURL:baseURL];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  [(RUIElement *)self reportInternalRenderEvent];
  webView = self->_webView;

  [(WKWebView *)webView setNeedsLayout];
}

- (id)scriptForDisableMagnification
{
  v2 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:@"var meta = document.createElement('meta');     meta.name = 'viewport';     meta.content = 'width=device-width injectionTime:initial-scale=1.0 forMainFrameOnly:{maximum-scale=1.0, user-scalable=no';     var head = document.getElementsByTagName('head')[0];    head.appendChild(meta);", 1, 0}];

  return v2;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v11 = a5;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v7 request];
  v10 = [v7 navigationType];

  LODWORD(v7) = [WeakRetained webViewOM:self shouldStartLoadWithRequest:v9 navigationType:v10];
  v11[2](v11, v7);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:RUIWebViewDidFinishLoadNotification object:0];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:RUIWebViewDidFinishLoadNotification object:0];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:RUIWebViewDidFinishLoadNotification object:0];
}

- (void)dealloc
{
  [(WKWebView *)self->_webView setNavigationDelegate:0];
  v3.receiver = self;
  v3.super_class = RUIWebView;
  [(RUIElement *)&v3 dealloc];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end