@interface RUIWebView
- (BOOL)_isScrollEnabled;
- (id)delegate;
- (id)scriptForDisableMagnification;
- (id)webView;
- (void)dealloc;
- (void)setHtml:(id)html;
- (void)viewDidAppear:(BOOL)appear;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation RUIWebView

- (id)webView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_opt_new();
    scriptForDisableMagnification = [(RUIWebView *)self scriptForDisableMagnification];
    [v4 addUserScript:scriptForDisableMagnification];

    v6 = objc_alloc(MEMORY[0x277CE38B0]);
    userStyleSheet = [(RUIWebView *)self userStyleSheet];
    v8 = [v6 initWithSource:userStyleSheet forMainFrameOnly:0];

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
    scrollView = [(WKWebView *)self->_webView scrollView];
    [scrollView _setShowsBackgroundShadow:0];

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
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"scrollEnabled"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setHtml:(id)html
{
  htmlCopy = html;
  if (([htmlCopy isEqualToString:self->_html] & 1) == 0)
  {
    v4 = [htmlCopy copy];
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

    v9 = [(WKWebView *)self->_webView loadHTMLString:htmlCopy baseURL:baseURL];
  }
}

- (void)viewDidAppear:(BOOL)appear
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

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  request = [actionCopy request];
  navigationType = [actionCopy navigationType];

  LODWORD(actionCopy) = [WeakRetained webViewOM:self shouldStartLoadWithRequest:request navigationType:navigationType];
  handlerCopy[2](handlerCopy, actionCopy);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:RUIWebViewDidFinishLoadNotification object:0];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:RUIWebViewDidFinishLoadNotification object:0];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:RUIWebViewDidFinishLoadNotification object:0];
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