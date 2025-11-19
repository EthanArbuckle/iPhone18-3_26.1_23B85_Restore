@interface PSLegalMessagePane
- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5;
- (PSLegalMessagePane)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutInsetContent:(CGRect)a3;
- (void)viewDidBecomeVisible;
- (void)webViewDidFinishLoad:(id)a3;
@end

@implementation PSLegalMessagePane

- (PSLegalMessagePane)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PSLegalMessagePane;
  v7 = [(PSEditingPane *)&v23 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v9 = [(PSLegalMessagePane *)v7 markupString];
    if (v9)
    {
      v10 = v9;
      v11 = &stru_1EFE45030;
    }

    else
    {
      v11 = [(PSLegalMessagePane *)v8 htmlFileLocation];
      v22 = 0;
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v11 encoding:4 error:&v22];
      v21 = v22;
      if (v21)
      {
        v15 = v21;
        v16 = _PSLoggingFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v25 = 36;
          v26 = 2080;
          v27 = "[PSLegalMessagePane initWithFrame:]";
          v28 = 2112;
          v29 = v15;
          _os_log_impl(&dword_18B008000, v16, OS_LOG_TYPE_DEFAULT, "%d %s %@", buf, 0x1Cu);
        }

        goto LABEL_5;
      }
    }

    v12 = [objc_alloc(MEMORY[0x1E69DD2E0]) initWithFrame:{x, y, width, height}];
    webView = v8->_webView;
    v8->_webView = v12;

    [(UIWebView *)v8->_webView setAutoresizingMask:18];
    [(UIWebView *)v8->_webView setDelegate:v8];
    [(UIWebView *)v8->_webView setDataDetectorTypes:0];
    [(UIWebView *)v8->_webView _setDrawsCheckeredPattern:0];
    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIWebView *)v8->_webView setBackgroundColor:v14];

    [(PSLegalMessagePane *)v8 addSubview:v8->_webView];
    v15 = [(UIWebView *)v8->_webView _browserView];
    [v15 setTilesOpaque:0];
    [v15 setLoadsSynchronously:1];
    [v15 setDetectsPhoneNumbers:0];
    v16 = [(UIWebView *)v8->_webView _scrollView];
    v17 = [MEMORY[0x1E69DC888] whiteColor];
    [v16 setBackgroundColor:v17];

    [v16 _setShowsBackgroundShadow:0];
    [v16 setDecelerationRate:0.998];
    v18 = v8->_webView;
    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    [(UIWebView *)v18 loadHTMLString:v10 baseURL:v19];

LABEL_5:
  }

  return v8;
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

- (void)webViewDidFinishLoad:(id)a3
{
  v19 = a3;
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 pointSize];
  v5 = v4;

  [MEMORY[0x1E69DB878] systemFontSize];
  if (v5 != v6)
  {
    v7 = v5 / v6 * 100.0;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust='%f%%'", floorf(v7)];
    v9 = [v19 stringByEvaluatingJavaScriptFromString:v8];
    v10 = [v19 stringByEvaluatingJavaScriptFromString:@"document.body.offsetHeight"];
    [v10 floatValue];
    v12 = v11;
    v13 = LODWORD(v11);

    v14 = [v19 scrollView];
    v15 = v14;
    if (v13 >= 0 && ((v13 & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E || (v13 - 1) <= 0x7FFFFE)
    {
      [v14 contentSize];
      if (v18 != v12)
      {
        [v15 contentSize];
        [v15 setContentSize:?];
      }
    }
  }
}

- (void)viewDidBecomeVisible
{
  v3 = [(UIWebView *)self->_webView scrollView];
  [v3 frame];
  v5 = v4;

  v8 = [(UIWebView *)self->_webView _browserView];
  [v8 frame];
  if (v6 != v5)
  {
    [v8 setFrame:?];
  }

  v7 = [(UIWebView *)self->_webView _scrollView];
  [v7 flashScrollIndicators];
}

- (void)dealloc
{
  [(UIWebView *)self->_webView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PSLegalMessagePane;
  [(PSLegalMessagePane *)&v3 dealloc];
}

- (void)layoutInsetContent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  webView = self->_webView;
  v8 = PSTableViewSideInset();
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v11 = CGRectInset(v10, v8, 0.0);

  [(UIWebView *)webView setFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
}

@end