@interface RUIWebContainerView
- (BOOL)_handleJavascriptBridgeRequest:(id)request;
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (CGSize)intrinsicContentSize;
- (RUIWebContainerView)initWithContent:(id)content baseURL:(id)l;
- (RUIWebContainerViewDelegate)delegate;
- (double)heightForWidth:(double)width;
- (id)_jsBridgeURLWithPath:(id)path;
- (void)_addContentChangeObservingScript;
- (void)_setHighlightedNow;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setUserStyleSheet:(id)sheet;
- (void)updateContent:(id)content baseURL:(id)l;
- (void)webViewDidFinishLoad:(id)load;
@end

@implementation RUIWebContainerView

- (RUIWebContainerView)initWithContent:(id)content baseURL:(id)l
{
  contentCopy = content;
  lCopy = l;
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
    objc_storeStrong(&v12->_baseURL, l);
    +[RUIPlatform assertWebkitAllowed];
    v14 = [objc_alloc(MEMORY[0x277D75D88]) initWithFrame:{v8, v9, v10, v11}];
    webView = v13->_webView;
    v13->_webView = v14;

    v16 = v13->_webView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIWebView *)v16 setBackgroundColor:clearColor];

    [(UIWebView *)v13->_webView setOpaque:0];
    [(UIWebView *)v13->_webView setDelegate:v13];
    WebThreadLock();
    _browserView = [(UIWebView *)v13->_webView _browserView];
    [_browserView setAutoresizes:0];
    LODWORD(v19) = 1.0;
    [_browserView setInitialScale:0xFFFFFFLL forDocumentTypes:v19];
    LODWORD(v20) = 1.0;
    [_browserView setMinimumScale:0xFFFFFFLL forDocumentTypes:v20];
    LODWORD(v21) = 1.0;
    [_browserView setMaximumScale:0xFFFFFFLL forDocumentTypes:v21];
    [_browserView setLoadsSynchronously:1];
    [_browserView setDoubleTapEnabled:0];
    [_browserView resetSelectionAssistant];
    [_browserView setAllowsImageSheet:0];
    [_browserView setAllowsLinkSheet:0];
    webView = [_browserView webView];
    [webView _setUseSystemAppearance:1];

    [(RUIWebContainerView *)v13 setUserStyleSheet:&stru_282D68F58];
    [(UIWebView *)v13->_webView loadData:contentCopy MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:lCopy];
    [_browserView resetSelectionAssistant];
    [(UIWebView *)v13->_webView setDataDetectorTypes:0];
    _scrollView = [(UIWebView *)v13->_webView _scrollView];
    [_scrollView _setShowsBackgroundShadow:0];

    _scrollView2 = [(UIWebView *)v13->_webView _scrollView];
    [_scrollView2 setBounces:0];

    _scrollView3 = [(UIWebView *)v13->_webView _scrollView];
    [_scrollView3 setScrollEnabled:0];

    [(RUIWebContainerView *)v13 setAutoresizingMask:18];
    [(RUIWebContainerView *)v13 addSubview:v13->_webView];
  }

  return v13;
}

- (void)updateContent:(id)content baseURL:(id)l
{
  objc_storeStrong(&self->_baseURL, l);
  lCopy = l;
  contentCopy = content;
  [(UIWebView *)self->_webView loadData:contentCopy MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:lCopy];

  [(RUIWebContainerView *)self invalidateIntrinsicContentSize];

  [(RUIWebContainerView *)self setNeedsLayout];
}

- (void)setUserStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  WebThreadLock();
  _browserView = [(UIWebView *)self->_webView _browserView];
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  markupDescription = [v6 markupDescription];
  tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
  styleString = [tableCellBlueTextColor styleString];
  v10 = [v5 initWithFormat:@"body { margin:0; padding:0; %@; word-break: break-word; } a { text-decoration:none; color: %@; }", markupDescription, styleString];

  [v10 appendString:sheetCopy];
  [_browserView setUserStyleSheet:v10];
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
  _browserView = [(UIWebView *)self->_webView _browserView];
  [_browserView setViewportSize:0xFFFFFFLL forDocumentTypes:{v7, v8}];
  [_browserView frame];
  v11 = v10;
  v13 = v12;
  [_browserView setFrame:?];
  _browserView2 = [(UIWebView *)self->_webView _browserView];
  webView = [_browserView2 webView];
  mainFrame = [webView mainFrame];
  [mainFrame forceLayoutAdjustingViewSize:1];

  webView2 = [_browserView webView];
  mainFrame2 = [webView2 mainFrame];
  frameView = [mainFrame2 frameView];
  documentView = [frameView documentView];
  [documentView frame];
  v22 = v21;

  [_browserView setFrame:{v11, v13, v7, v22}];
}

- (void)_setHighlightedNow
{
  highlighted = self->_highlighted;
  if (self->_reallyHighlighted != highlighted)
  {
    self->_reallyHighlighted = highlighted;
    WebThreadLock();
    _browserView = [(UIWebView *)self->_webView _browserView];
    webView = [_browserView webView];

    windowScriptObject = [webView windowScriptObject];
    v6 = MEMORY[0x277CBEA60];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_reallyHighlighted];
    v8 = [v6 arrayWithObject:v7];
    v9 = [windowScriptObject callWebScriptMethod:@"setHighlighted" withArguments:v8];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    if (highlighted)
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

- (double)heightForWidth:(double)width
{
  v3 = 0.0;
  if (width != 0.0)
  {
    WebThreadLock();
    _browserView = [(UIWebView *)self->_webView _browserView];
    [_browserView frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [_browserView setFrame:{0.0, 0.0, width, 0.0}];
    webView = [_browserView webView];
    mainFrame = [webView mainFrame];
    [mainFrame forceLayoutAdjustingViewSize:1];

    webView2 = [_browserView webView];
    mainFrame2 = [webView2 mainFrame];
    frameView = [mainFrame2 frameView];
    documentView = [frameView documentView];
    [documentView frame];
    v3 = v21;

    [_browserView setFrame:{v8, v10, v12, v14}];
    webView3 = [_browserView webView];
    mainFrame3 = [webView3 mainFrame];
    [mainFrame3 forceLayoutAdjustingViewSize:1];
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

- (id)_jsBridgeURLWithPath:(id)path
{
  v3 = MEMORY[0x277CCACE0];
  pathCopy = path;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"remoteui"];
  [v5 setPath:pathCopy];

  v6 = [v5 URL];

  return v6;
}

- (void)_addContentChangeObservingScript
{
  v7 = [(RUIWebContainerView *)self _jsBridgeURLWithPath:@"/contentDidChange"];
  v3 = MEMORY[0x277CCACA8];
  absoluteString = [v7 absoluteString];
  v5 = [v3 stringWithFormat:@"         (function(){             function loadURLInFrame(src){                 var rootElement = document.documentElement                 var frame = document.createElement('IFRAME');                 frame.style.width = 0;                 frame.style.height = 0;                 frame.setAttribute('src', src);                 rootElement.appendChild(frame);                 frame.parentNode.removeChild(frame);             }                         var mutationObserver = new MutationObserver(function() {                 loadURLInFrame('%@');             });                         var elementToObserve = document.body;             mutationObserver.observe(elementToObserve, {subtree: true, childList: true});         })();     ", absoluteString];;

  v6 = [(UIWebView *)self->_webView stringByEvaluatingJavaScriptFromString:v5];
}

- (void)webViewDidFinishLoad:(id)load
{
  loadCopy = load;
  v4 = [loadCopy stringByEvaluatingJavaScriptFromString:@"document.getElementsByTagName('html')[0].getAttribute('dir')"];
  if (![v4 length])
  {
    v5 = [loadCopy stringByEvaluatingJavaScriptFromString:{@"document.getElementsByTagName('html')[0].setAttribute('dir', 'auto')"}];
  }

  [(RUIWebContainerView *)self _addContentChangeObservingScript];
}

- (BOOL)_handleJavascriptBridgeRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy URL];
  scheme = [v5 scheme];
  v7 = [scheme isEqualToString:@"remoteui"];

  if (!v7)
  {
    goto LABEL_14;
  }

  if (_isInternalInstall())
  {
    v8 = _RUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [requestCopy URL];
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "handling webview javascript bridge request with url: %@", &v19, 0xCu);
    }
  }

  v10 = [requestCopy URL];
  path = [v10 path];
  v12 = [path isEqualToString:@"/contentDidChange"];

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

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  requestCopy = request;
  if (![(RUIWebContainerView *)self _handleJavascriptBridgeRequest:requestCopy])
  {
    if (type == 5)
    {
      v10 = 1;
      goto LABEL_6;
    }

    if (!type)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [requestCopy URL];
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