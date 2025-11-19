@interface RUIWebContainerView
- (BOOL)_handleJavascriptBridgeRequest:(id)a3;
- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5;
- (CGSize)intrinsicContentSize;
- (RUIWebContainerView)initWithContent:(id)a3 baseURL:(id)a4;
- (RUIWebContainerViewDelegate)delegate;
- (double)heightForWidth:(double)a3;
- (id)_jsBridgeURLWithPath:(id)a3;
- (void)_addContentChangeObservingScript;
- (void)_setHighlightedNow;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setUserStyleSheet:(id)a3;
- (void)updateContent:(id)a3 baseURL:(id)a4;
- (void)webViewDidFinishLoad:(id)a3;
@end

@implementation RUIWebContainerView

- (RUIWebContainerView)initWithContent:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = RUIWebContainerView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(RUIWebContainerView *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseURL, a4);
    +[RUIPlatform assertWebkitAllowed];
    v14 = [objc_alloc(MEMORY[0x277D75D88]) initWithFrame:{v8, v9, v10, v11}];
    webView = v13->_webView;
    v13->_webView = v14;

    v16 = v13->_webView;
    v17 = [MEMORY[0x277D75348] clearColor];
    [(UIWebView *)v16 setBackgroundColor:v17];

    [(UIWebView *)v13->_webView setOpaque:0];
    [(UIWebView *)v13->_webView setDelegate:v13];
    WebThreadLock();
    v18 = [(UIWebView *)v13->_webView _browserView];
    [v18 setAutoresizes:0];
    LODWORD(v19) = 1.0;
    [v18 setInitialScale:0xFFFFFFLL forDocumentTypes:v19];
    LODWORD(v20) = 1.0;
    [v18 setMinimumScale:0xFFFFFFLL forDocumentTypes:v20];
    LODWORD(v21) = 1.0;
    [v18 setMaximumScale:0xFFFFFFLL forDocumentTypes:v21];
    [v18 setLoadsSynchronously:1];
    [v18 setDoubleTapEnabled:0];
    [v18 resetSelectionAssistant];
    [v18 setAllowsImageSheet:0];
    [v18 setAllowsLinkSheet:0];
    v22 = [v18 webView];
    [v22 _setUseSystemAppearance:1];

    [(RUIWebContainerView *)v13 setUserStyleSheet:&stru_282D68F58];
    [(UIWebView *)v13->_webView loadData:v6 MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:v7];
    [v18 resetSelectionAssistant];
    [(UIWebView *)v13->_webView setDataDetectorTypes:0];
    v23 = [(UIWebView *)v13->_webView _scrollView];
    [v23 _setShowsBackgroundShadow:0];

    v24 = [(UIWebView *)v13->_webView _scrollView];
    [v24 setBounces:0];

    v25 = [(UIWebView *)v13->_webView _scrollView];
    [v25 setScrollEnabled:0];

    [(RUIWebContainerView *)v13 setAutoresizingMask:18];
    [(RUIWebContainerView *)v13 addSubview:v13->_webView];
  }

  return v13;
}

- (void)updateContent:(id)a3 baseURL:(id)a4
{
  objc_storeStrong(&self->_baseURL, a4);
  v7 = a4;
  v8 = a3;
  [(UIWebView *)self->_webView loadData:v8 MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:v7];

  [(RUIWebContainerView *)self invalidateIntrinsicContentSize];

  [(RUIWebContainerView *)self setNeedsLayout];
}

- (void)setUserStyleSheet:(id)a3
{
  v4 = a3;
  WebThreadLock();
  v11 = [(UIWebView *)self->_webView _browserView];
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  v7 = [v6 markupDescription];
  v8 = [MEMORY[0x277D75348] tableCellBlueTextColor];
  v9 = [v8 styleString];
  v10 = [v5 initWithFormat:@"body { margin:0; padding:0; %@; word-break: break-word; } a { text-decoration:none; color: %@; }", v7, v9];

  [v10 appendString:v4];
  [v11 setUserStyleSheet:v10];
}

- (void)layoutSubviews
{
  [(RUIWebContainerView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = v3;
  if (v6 != self->_size.width || v3 != self->_size.height)
  {
    [(RUIWebContainerView *)self invalidateIntrinsicContentSize];
  }

  self->_size.width = v7;
  self->_size.height = v8;
  [(UIWebView *)self->_webView setFrame:v5, 0.0, v7, v8];
  WebThreadLock();
  v23 = [(UIWebView *)self->_webView _browserView];
  [v23 setViewportSize:0xFFFFFFLL forDocumentTypes:{v7, v8}];
  [v23 frame];
  v11 = v10;
  v13 = v12;
  [v23 setFrame:?];
  v14 = [(UIWebView *)self->_webView _browserView];
  v15 = [v14 webView];
  v16 = [v15 mainFrame];
  [v16 forceLayoutAdjustingViewSize:1];

  v17 = [v23 webView];
  v18 = [v17 mainFrame];
  v19 = [v18 frameView];
  v20 = [v19 documentView];
  [v20 frame];
  v22 = v21;

  [v23 setFrame:{v11, v13, v7, v22}];
}

- (void)_setHighlightedNow
{
  highlighted = self->_highlighted;
  if (self->_reallyHighlighted != highlighted)
  {
    self->_reallyHighlighted = highlighted;
    WebThreadLock();
    v4 = [(UIWebView *)self->_webView _browserView];
    v10 = [v4 webView];

    v5 = [v10 windowScriptObject];
    v6 = MEMORY[0x277CBEA60];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_reallyHighlighted];
    v8 = [v6 arrayWithObject:v7];
    v9 = [v5 callWebScriptMethod:@"setHighlighted" withArguments:v8];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    if (a3)
    {
      [(RUIWebContainerView *)self _setHighlightedNow];
      v4 = MEMORY[0x277D82BB8];

      [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel_unhighlight object:0];
    }

    else
    {

      [(RUIWebContainerView *)self performSelector:sel__setHighlightedNow withObject:0 afterDelay:0.0];
    }
  }
}

- (double)heightForWidth:(double)a3
{
  v3 = 0.0;
  if (a3 != 0.0)
  {
    WebThreadLock();
    v6 = [(UIWebView *)self->_webView _browserView];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 setFrame:{0.0, 0.0, a3, 0.0}];
    v15 = [v6 webView];
    v16 = [v15 mainFrame];
    [v16 forceLayoutAdjustingViewSize:1];

    v17 = [v6 webView];
    v18 = [v17 mainFrame];
    v19 = [v18 frameView];
    v20 = [v19 documentView];
    [v20 frame];
    v3 = v21;

    [v6 setFrame:{v8, v10, v12, v14}];
    v22 = [v6 webView];
    v23 = [v22 mainFrame];
    [v23 forceLayoutAdjustingViewSize:1];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x277D77260];
  [(RUIWebContainerView *)self bounds];
  [(RUIWebContainerView *)self heightForWidth:v4];
  v6 = v5;
  v7 = v3;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)_jsBridgeURLWithPath:(id)a3
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"remoteui"];
  [v5 setPath:v4];

  v6 = [v5 URL];

  return v6;
}

- (void)_addContentChangeObservingScript
{
  v7 = [(RUIWebContainerView *)self _jsBridgeURLWithPath:@"/contentDidChange"];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v7 absoluteString];
  v5 = [v3 stringWithFormat:@"         (function(){             function loadURLInFrame(src){                 var rootElement = document.documentElement                 var frame = document.createElement('IFRAME');                 frame.style.width = 0;                 frame.style.height = 0;                 frame.setAttribute('src', src);                 rootElement.appendChild(frame);                 frame.parentNode.removeChild(frame);             }                         var mutationObserver = new MutationObserver(function() {                 loadURLInFrame('%@');             });                         var elementToObserve = document.body;             mutationObserver.observe(elementToObserve, {subtree: true, childList: true});         })();     ", v4];;

  v6 = [(UIWebView *)self->_webView stringByEvaluatingJavaScriptFromString:v5];
}

- (void)webViewDidFinishLoad:(id)a3
{
  v6 = a3;
  v4 = [v6 stringByEvaluatingJavaScriptFromString:@"document.getElementsByTagName('html')[0].getAttribute('dir')"];
  if (![v4 length])
  {
    v5 = [v6 stringByEvaluatingJavaScriptFromString:{@"document.getElementsByTagName('html')[0].setAttribute('dir', 'auto')"}];
  }

  [(RUIWebContainerView *)self _addContentChangeObservingScript];
}

- (BOOL)_handleJavascriptBridgeRequest:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 URL];
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:@"remoteui"];

  if (!v7)
  {
    goto LABEL_14;
  }

  if (_isInternalInstall())
  {
    v8 = _RUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 URL];
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "handling webview javascript bridge request with url: %@", &v19, 0xCu);
    }
  }

  v10 = [v4 URL];
  v11 = [v10 path];
  v12 = [v11 isEqualToString:@"/contentDidChange"];

  if (v12)
  {
    if (_isInternalInstall())
    {
      v13 = _RUILoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "webview content did change, notifying delegate", &v19, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 webContainerViewContentDidChange:self];
    }

    v17 = 1;
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  return v17;
}

- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5
{
  v7 = a4;
  if (![(RUIWebContainerView *)self _handleJavascriptBridgeRequest:v7])
  {
    if (a5 == 5)
    {
      v10 = 1;
      goto LABEL_6;
    }

    if (!a5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [v7 URL];
      [WeakRetained webContainerView:self didClickLinkWithURL:v9];
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (RUIWebContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end