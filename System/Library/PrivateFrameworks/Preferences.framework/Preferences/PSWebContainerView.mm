@interface PSWebContainerView
- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5;
- (PSWebContainerView)init;
- (double)heightForWidth:(double)a3;
- (void)layoutSubviews;
- (void)setContent:(id)a3;
- (void)setUserStyleSheet:(id)a3;
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
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UIWebView *)v9 setBackgroundColor:v10];

    [(UIWebView *)v6->_webView setOpaque:0];
    v11 = [(UIWebView *)v6->_webView _browserView];
    [v11 setAutoresizes:0];
    LODWORD(v12) = 1.0;
    [v11 setInitialScale:0xFFFFFFLL forDocumentTypes:v12];
    LODWORD(v13) = 1.0;
    [v11 setMinimumScale:0xFFFFFFLL forDocumentTypes:v13];
    LODWORD(v14) = 1.0;
    [v11 setMaximumScale:0xFFFFFFLL forDocumentTypes:v14];
    [v11 setLoadsSynchronously:1];
    [v11 setDoubleTapEnabled:0];
    [v11 resetSelectionAssistant];
    [(PSWebContainerView *)v6 setUserStyleSheet:&stru_1EFE45030];
    [(UIWebView *)v6->_webView setDataDetectorTypes:0];
    v15 = [(UIWebView *)v6->_webView _scrollView];
    [v15 _setShowsBackgroundShadow:0];

    v16 = [(UIWebView *)v6->_webView _scrollView];
    [v16 setBounces:0];

    v17 = [(UIWebView *)v6->_webView _scrollView];
    [v17 setScrollEnabled:0];

    [(PSWebContainerView *)v6 setAutoresizingMask:18];
    [(PSWebContainerView *)v6 setClipsToBounds:1];
    [(PSWebContainerView *)v6 addSubview:v6->_webView];
  }

  return v6;
}

- (void)setUserStyleSheet:(id)a3
{
  webView = self->_webView;
  v4 = a3;
  v11 = [(UIWebView *)webView _browserView];
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v7 = [v6 markupDescription];
  v8 = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
  v9 = [v8 styleString];
  v10 = [v5 initWithFormat:@"body { %@; } a { text-decoration:none; color:%@; }", v7, v9];

  [v10 appendString:v4];
  [v11 setUserStyleSheet:v10];
}

- (void)setContent:(id)a3
{
  v9 = a3;
  if (self->_content != v9)
  {
    objc_storeStrong(&self->_content, a3);
    if (self->_content)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_content encoding:4];
      v6 = [(PSWebContainerView *)self semanticContentAttribute];
      webView = self->_webView;
      if (v6 == 4)
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
  v20 = [(UIWebView *)self->_webView _browserView];
  [v20 setViewportSize:0xFFFFFFLL forDocumentTypes:{v4, v6}];
  [v20 frame];
  v8 = v7;
  v10 = v9;
  [v20 setFrame:?];
  v11 = [(UIWebView *)self->_webView _browserView];
  v12 = [v11 webView];
  v13 = [v12 mainFrame];
  [v13 forceLayoutAdjustingViewSize:1];

  v14 = [v20 webView];
  v15 = [v14 mainFrame];
  v16 = [v15 frameView];
  v17 = [v16 documentView];
  [v17 frame];
  v19 = v18;

  [v20 setFrame:{v8, v10, v4, v19}];
}

- (double)heightForWidth:(double)a3
{
  v4 = [(UIWebView *)self->_webView _browserView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 setFrame:{0.0, 0.0, a3, 0.0}];
  v13 = [v4 webView];
  v14 = [v13 mainFrame];
  [v14 forceLayoutAdjustingViewSize:1];

  v15 = [v4 webView];
  v16 = [v15 mainFrame];
  v17 = [v16 frameView];
  v18 = [v17 documentView];
  [v18 frame];
  v20 = v19;

  [v4 setFrame:{v6, v8, v10, v12}];
  return v20;
}

- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5
{
  if (!a5)
  {
    v6 = MEMORY[0x1E69DC668];
    v7 = a4;
    v8 = [v6 sharedApplication];
    v9 = [v7 URL];

    [v8 openURL:v9 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }

  return a5 != 0;
}

@end