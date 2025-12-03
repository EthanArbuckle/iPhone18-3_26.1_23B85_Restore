@interface PSWebContainerView
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (PSWebContainerView)init;
- (double)heightForWidth:(double)width;
- (void)layoutSubviews;
- (void)setContent:(id)content;
- (void)setUserStyleSheet:(id)sheet;
@end

@implementation PSWebContainerView

- (PSWebContainerView)init
{
  v19.receiver = self;
  v19.super_class = PSWebContainerView;
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v6 = [(PSWebContainerView *)&v19 initWithFrame:*MEMORY[0x1E695F058], v3, v4, v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD2E0]) initWithFrame:{v2, v3, v4, v5}];
    webView = v6->_webView;
    v6->_webView = v7;

    [(UIWebView *)v6->_webView setDelegate:v6];
    v9 = v6->_webView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIWebView *)v9 setBackgroundColor:clearColor];

    [(UIWebView *)v6->_webView setOpaque:0];
    _browserView = [(UIWebView *)v6->_webView _browserView];
    [_browserView setAutoresizes:0];
    LODWORD(v12) = 1.0;
    [_browserView setInitialScale:0xFFFFFFLL forDocumentTypes:v12];
    LODWORD(v13) = 1.0;
    [_browserView setMinimumScale:0xFFFFFFLL forDocumentTypes:v13];
    LODWORD(v14) = 1.0;
    [_browserView setMaximumScale:0xFFFFFFLL forDocumentTypes:v14];
    [_browserView setLoadsSynchronously:1];
    [_browserView setDoubleTapEnabled:0];
    [_browserView resetSelectionAssistant];
    [(PSWebContainerView *)v6 setUserStyleSheet:&stru_1EFE45030];
    [(UIWebView *)v6->_webView setDataDetectorTypes:0];
    _scrollView = [(UIWebView *)v6->_webView _scrollView];
    [_scrollView _setShowsBackgroundShadow:0];

    _scrollView2 = [(UIWebView *)v6->_webView _scrollView];
    [_scrollView2 setBounces:0];

    _scrollView3 = [(UIWebView *)v6->_webView _scrollView];
    [_scrollView3 setScrollEnabled:0];

    [(PSWebContainerView *)v6 setAutoresizingMask:18];
    [(PSWebContainerView *)v6 setClipsToBounds:1];
    [(PSWebContainerView *)v6 addSubview:v6->_webView];
  }

  return v6;
}

- (void)setUserStyleSheet:(id)sheet
{
  webView = self->_webView;
  sheetCopy = sheet;
  _browserView = [(UIWebView *)webView _browserView];
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  markupDescription = [v6 markupDescription];
  tableCellBlueTextColor = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
  styleString = [tableCellBlueTextColor styleString];
  v10 = [v5 initWithFormat:@"body { %@; } a { text-decoration:none; color:%@; }", markupDescription, styleString];

  [v10 appendString:sheetCopy];
  [_browserView setUserStyleSheet:v10];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  if (self->_content != contentCopy)
  {
    objc_storeStrong(&self->_content, content);
    if (self->_content)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_content encoding:4];
      semanticContentAttribute = [(PSWebContainerView *)self semanticContentAttribute];
      webView = self->_webView;
      if (semanticContentAttribute == 4)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<div dir='rtl'>%@<div>", v5];
        [(UIWebView *)webView loadHTMLString:v8 baseURL:0];
      }

      else
      {
        [(UIWebView *)webView loadHTMLString:v5 baseURL:0];
      }
    }
  }
}

- (void)layoutSubviews
{
  [(PSWebContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIWebView *)self->_webView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  _browserView = [(UIWebView *)self->_webView _browserView];
  [_browserView setViewportSize:0xFFFFFFLL forDocumentTypes:{v4, v6}];
  [_browserView frame];
  v8 = v7;
  v10 = v9;
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
  v19 = v18;

  [_browserView setFrame:{v8, v10, v4, v19}];
}

- (double)heightForWidth:(double)width
{
  _browserView = [(UIWebView *)self->_webView _browserView];
  [_browserView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [_browserView setFrame:{0.0, 0.0, width, 0.0}];
  webView = [_browserView webView];
  mainFrame = [webView mainFrame];
  [mainFrame forceLayoutAdjustingViewSize:1];

  webView2 = [_browserView webView];
  mainFrame2 = [webView2 mainFrame];
  frameView = [mainFrame2 frameView];
  documentView = [frameView documentView];
  [documentView frame];
  v20 = v19;

  [_browserView setFrame:{v6, v8, v10, v12}];
  return v20;
}

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  if (!type)
  {
    v6 = MEMORY[0x1E69DC668];
    requestCopy = request;
    sharedApplication = [v6 sharedApplication];
    v9 = [requestCopy URL];

    [sharedApplication openURL:v9 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }

  return type != 0;
}

@end