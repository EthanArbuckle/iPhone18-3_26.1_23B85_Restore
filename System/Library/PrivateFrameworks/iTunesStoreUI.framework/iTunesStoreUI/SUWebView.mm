@interface SUWebView
- (BOOL)getStatusBarStyle:(int64_t *)style;
- (NSString)title;
- (SUWebView)initWithFrame:(CGRect)frame;
- (id)windowScriptObject;
- (void)_setPinnedHeaderView:(id)view withTopInsetAdjustment:(double)adjustment;
- (void)beginSynchronousLayout;
- (void)endSynchronousLayout;
- (void)loadArchive:(id)archive;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setScrollingEnabled:(BOOL)enabled;
- (void)view:(id)view didSetFrame:(CGRect)frame oldFrame:(CGRect)oldFrame;
@end

@implementation SUWebView

- (SUWebView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SUWebView;
  result = [(SUWebView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_originalShowsBackgroundShadow = -1;
  }

  return result;
}

- (void)beginSynchronousLayout
{
  synchronousLayoutCount = self->_synchronousLayoutCount;
  if (!synchronousLayoutCount)
  {
    [(SUWebView *)self _setDrawInWebThread:0];
    _browserView = [(SUWebView *)self _browserView];
    [_browserView setPaused:1];

    synchronousLayoutCount = self->_synchronousLayoutCount;
  }

  self->_synchronousLayoutCount = synchronousLayoutCount + 1;
}

- (void)endSynchronousLayout
{
  synchronousLayoutCount = self->_synchronousLayoutCount;
  v3 = synchronousLayoutCount == 1;
  v4 = synchronousLayoutCount < 1;
  v5 = synchronousLayoutCount - 1;
  if (!v4)
  {
    self->_synchronousLayoutCount = v5;
    if (v3)
    {
      _browserView = [(SUWebView *)self _browserView];
      [_browserView setPaused:0];

      _browserView2 = [(SUWebView *)self _browserView];
      [_browserView2 forceLayout];

      [(SUWebView *)self forceDisplayIfNeeded];

      [(SUWebView *)self _setDrawInWebThread:1];
    }
  }
}

- (BOOL)getStatusBarStyle:(int64_t *)style
{
  WebThreadLock();
  _browserView = [(SUWebView *)self _browserView];
  webView = [_browserView webView];
  mainFrame = [webView mainFrame];
  dOMDocument = [mainFrame DOMDocument];

  if (!dOMDocument)
  {
    goto LABEL_7;
  }

  v9 = [dOMDocument getElementsByTagName:@"meta"];
  if (![v9 length])
  {
LABEL_6:

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  while (1)
  {
    v11 = [v9 item:v10];
    v12 = [v11 getAttribute:@"name"];
    v13 = [v12 caseInsensitiveCompare:@"apple-mobile-web-app-status-bar-style"];

    if (!v13)
    {
      break;
    }

    v10 = (v10 + 1);
    if (v10 >= [v9 length])
    {
      goto LABEL_6;
    }
  }

  v16 = [MEMORY[0x1E69DD2B8] webClipStatusBarStyleForWebDocumentView:_browserView];

  if (style)
  {
    *style = v16;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (void)loadArchive:(id)archive
{
  archiveCopy = archive;
  v3 = archiveCopy;
  WebThreadRun();
}

void __25__SUWebView_loadArchive___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _browserView];
  v2 = [v4 webView];
  v3 = [v2 mainFrame];
  [v3 loadArchive:*(a1 + 40)];
}

- (void)setScrollingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _scrollView = [(SUWebView *)self _scrollView];
  *(self + 456) = *(self + 456) & 0xFE | !enabledCopy;
  [_scrollView setScrollsToTop:enabledCopy];
  [_scrollView setScrollEnabled:enabledCopy];
}

- (NSString)title
{
  _browserView = [(SUWebView *)self _browserView];
  webView = [_browserView webView];
  mainFrameTitle = [webView mainFrameTitle];

  return mainFrameTitle;
}

- (id)windowScriptObject
{
  _browserView = [(SUWebView *)self _browserView];
  webView = [_browserView webView];
  windowScriptObject = [webView windowScriptObject];

  if (([(SUWebView *)self isLoading]& 1) != 0)
  {
    v6 = [windowScriptObject valueForKey:@"document"];
    v7 = [v6 valueForKey:@"body"];

    if (!v7)
    {
      _browserView2 = [(SUWebView *)self _browserView];
      loadsSynchronously = [_browserView2 loadsSynchronously];
      [_browserView2 setLoadsSynchronously:1];
      [(SUWebView *)self loadHTMLString:@"<html><head></head><body></body></html>" baseURL:0];
      [_browserView2 setLoadsSynchronously:loadsSynchronously];
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [windowScriptObject valueForKey:@"document"];
    [v10 setObject:v11 forKey:@"document"];

    v12 = [windowScriptObject valueForKey:@"iTunes"];
    [v10 setObject:v12 forKey:@"iTunes"];

    v13 = [[SUScriptDictionary alloc] initWithDictionary:v10];
  }

  else
  {
    v13 = windowScriptObject;
  }

  return v13;
}

- (void)_setPinnedHeaderView:(id)view withTopInsetAdjustment:(double)adjustment
{
  viewCopy = view;
  if (self->_pinnedHeaderView != viewCopy)
  {
    v13 = viewCopy;
    _scrollView = [(SUWebView *)self _scrollView];
    [(UIView *)self->_pinnedHeaderView removeFromSuperview];
    objc_storeStrong(&self->_pinnedHeaderView, view);
    if (self->_pinnedHeaderView)
    {
      [_scrollView bounds];
      v10 = v9;
      [(UIView *)v13 frame];
      v12 = v11;
      [(UIView *)self->_pinnedHeaderView setAutoresizingMask:2];
      [(UIView *)self->_pinnedHeaderView setFrame:0.0, adjustment, v10, v12];
      [_scrollView _addContentSubview:self->_pinnedHeaderView atBack:0];
    }

    self->_pinnedHeaderInsetAdjustment = adjustment;

    viewCopy = v13;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentInset];
  v7 = v6;
  [scrollCopy contentOffset];
  v10 = v9;
  originalBackgroundColor = self->_originalBackgroundColor;
  if (v8 >= -v7)
  {
    if (originalBackgroundColor)
    {
      [(SUWebView *)self setBackgroundColor:?];
      v16 = self->_originalBackgroundColor;
      self->_originalBackgroundColor = 0;
    }

    originalShowsBackgroundShadow = self->_originalShowsBackgroundShadow;
    if (originalShowsBackgroundShadow != 255)
    {
      [scrollCopy _setShowsBackgroundShadow:originalShowsBackgroundShadow != 0];
      self->_originalShowsBackgroundShadow = -1;
    }

    if (self->_isPinned)
    {
      [(UIView *)self->_pinnedHeaderView frame];
      [(UIView *)self->_pinnedHeaderView setFrame:?];
      self->_isPinned = 0;
    }
  }

  else
  {
    v12 = v8;
    if (!originalBackgroundColor && self->_topBackgroundColor)
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v14 = self->_originalBackgroundColor;
      self->_originalBackgroundColor = systemBackgroundColor;

      [(SUWebView *)self setBackgroundColor:self->_topBackgroundColor];
    }

    if (self->_showsTopBackgroundShadow && self->_originalShowsBackgroundShadow == 255)
    {
      self->_originalShowsBackgroundShadow = [scrollCopy _showsBackgroundShadow];
      [scrollCopy _setShowsBackgroundShadow:self->_showsTopBackgroundShadow];
    }

    pinnedHeaderView = self->_pinnedHeaderView;
    if (pinnedHeaderView)
    {
      [(UIView *)pinnedHeaderView frame];
      [(UIView *)self->_pinnedHeaderView setFrame:v10, v12 + v7 + self->_pinnedHeaderInsetAdjustment];
      self->_isPinned = 1;
    }
  }

  if ([MEMORY[0x1E69DD2E0] instancesRespondToSelector:a2])
  {
    v18.receiver = self;
    v18.super_class = SUWebView;
    [(SUWebView *)&v18 scrollViewDidScroll:scrollCopy];
  }
}

- (void)view:(id)view didSetFrame:(CGRect)frame oldFrame:(CGRect)oldFrame
{
  height = oldFrame.size.height;
  width = oldFrame.size.width;
  y = oldFrame.origin.y;
  x = oldFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  viewCopy = view;
  delegate = [(SUWebView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webView:self documentViewDidSetFrame:{v12, v11, v10, v9}];
  }

  v16.receiver = self;
  v16.super_class = SUWebView;
  [(SUWebView *)&v16 view:viewCopy didSetFrame:v12 oldFrame:v11, v10, v9, x, y, width, height];
}

@end