@interface PSLegalMessagePane
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (PSLegalMessagePane)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutInsetContent:(CGRect)content;
- (void)viewDidBecomeVisible;
- (void)webViewDidFinishLoad:(id)load;
@end

@implementation PSLegalMessagePane

- (PSLegalMessagePane)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PSLegalMessagePane;
  v7 = [(PSEditingPane *)&v23 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    markupString = [(PSLegalMessagePane *)v7 markupString];
    if (markupString)
    {
      v10 = markupString;
      htmlFileLocation = &stru_1EFE45030;
    }

    else
    {
      htmlFileLocation = [(PSLegalMessagePane *)v8 htmlFileLocation];
      v22 = 0;
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:htmlFileLocation encoding:4 error:&v22];
      v21 = v22;
      if (v21)
      {
        _browserView = v21;
        _scrollView = _PSLoggingFacility();
        if (os_log_type_enabled(_scrollView, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v25 = 36;
          v26 = 2080;
          v27 = "[PSLegalMessagePane initWithFrame:]";
          v28 = 2112;
          v29 = _browserView;
          _os_log_impl(&dword_18B008000, _scrollView, OS_LOG_TYPE_DEFAULT, "%d %s %@", buf, 0x1Cu);
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIWebView *)v8->_webView setBackgroundColor:whiteColor];

    [(PSLegalMessagePane *)v8 addSubview:v8->_webView];
    _browserView = [(UIWebView *)v8->_webView _browserView];
    [_browserView setTilesOpaque:0];
    [_browserView setLoadsSynchronously:1];
    [_browserView setDetectsPhoneNumbers:0];
    _scrollView = [(UIWebView *)v8->_webView _scrollView];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [_scrollView setBackgroundColor:whiteColor2];

    [_scrollView _setShowsBackgroundShadow:0];
    [_scrollView setDecelerationRate:0.998];
    v18 = v8->_webView;
    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:htmlFileLocation];
    [(UIWebView *)v18 loadHTMLString:v10 baseURL:v19];

LABEL_5:
  }

  return v8;
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

- (void)webViewDidFinishLoad:(id)load
{
  loadCopy = load;
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 pointSize];
  v5 = v4;

  [MEMORY[0x1E69DB878] systemFontSize];
  if (v5 != v6)
  {
    v7 = v5 / v6 * 100.0;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust='%f%%'", floorf(v7)];
    v9 = [loadCopy stringByEvaluatingJavaScriptFromString:v8];
    v10 = [loadCopy stringByEvaluatingJavaScriptFromString:@"document.body.offsetHeight"];
    [v10 floatValue];
    v12 = v11;
    v13 = LODWORD(v11);

    scrollView = [loadCopy scrollView];
    v15 = scrollView;
    if (v13 >= 0 && ((v13 & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E || (v13 - 1) <= 0x7FFFFE)
    {
      [scrollView contentSize];
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
  scrollView = [(UIWebView *)self->_webView scrollView];
  [scrollView frame];
  v5 = v4;

  _browserView = [(UIWebView *)self->_webView _browserView];
  [_browserView frame];
  if (v6 != v5)
  {
    [_browserView setFrame:?];
  }

  _scrollView = [(UIWebView *)self->_webView _scrollView];
  [_scrollView flashScrollIndicators];
}

- (void)dealloc
{
  [(UIWebView *)self->_webView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PSLegalMessagePane;
  [(PSLegalMessagePane *)&v3 dealloc];
}

- (void)layoutInsetContent:(CGRect)content
{
  height = content.size.height;
  width = content.size.width;
  y = content.origin.y;
  x = content.origin.x;
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