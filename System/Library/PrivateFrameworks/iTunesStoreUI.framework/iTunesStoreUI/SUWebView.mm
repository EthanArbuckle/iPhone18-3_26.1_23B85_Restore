@interface SUWebView
- (BOOL)getStatusBarStyle:(int64_t *)a3;
- (NSString)title;
- (SUWebView)initWithFrame:(CGRect)a3;
- (id)windowScriptObject;
- (void)_setPinnedHeaderView:(id)a3 withTopInsetAdjustment:(double)a4;
- (void)beginSynchronousLayout;
- (void)endSynchronousLayout;
- (void)loadArchive:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setScrollingEnabled:(BOOL)a3;
- (void)view:(id)a3 didSetFrame:(CGRect)a4 oldFrame:(CGRect)a5;
@end

@implementation SUWebView

- (SUWebView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUWebView;
  result = [(SUWebView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v4 = [(SUWebView *)self _browserView];
    [v4 setPaused:1];

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
      v7 = [(SUWebView *)self _browserView];
      [v7 setPaused:0];

      v8 = [(SUWebView *)self _browserView];
      [v8 forceLayout];

      [(SUWebView *)self forceDisplayIfNeeded];

      [(SUWebView *)self _setDrawInWebThread:1];
    }
  }
}

- (BOOL)getStatusBarStyle:(int64_t *)a3
{
  WebThreadLock();
  v5 = [(SUWebView *)self _browserView];
  v6 = [v5 webView];
  v7 = [v6 mainFrame];
  v8 = [v7 DOMDocument];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 getElementsByTagName:@"meta"];
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

  v16 = [MEMORY[0x1E69DD2B8] webClipStatusBarStyleForWebDocumentView:v5];

  if (a3)
  {
    *a3 = v16;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (void)loadArchive:(id)a3
{
  v4 = a3;
  v3 = v4;
  WebThreadRun();
}

void __25__SUWebView_loadArchive___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _browserView];
  v2 = [v4 webView];
  v3 = [v2 mainFrame];
  [v3 loadArchive:*(a1 + 40)];
}

- (void)setScrollingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUWebView *)self _scrollView];
  *(self + 456) = *(self + 456) & 0xFE | !v3;
  [v5 setScrollsToTop:v3];
  [v5 setScrollEnabled:v3];
}

- (NSString)title
{
  v2 = [(SUWebView *)self _browserView];
  v3 = [v2 webView];
  v4 = [v3 mainFrameTitle];

  return v4;
}

- (id)windowScriptObject
{
  v3 = [(SUWebView *)self _browserView];
  v4 = [v3 webView];
  v5 = [v4 windowScriptObject];

  if (([(SUWebView *)self isLoading]& 1) != 0)
  {
    v6 = [v5 valueForKey:@"document"];
    v7 = [v6 valueForKey:@"body"];

    if (!v7)
    {
      v8 = [(SUWebView *)self _browserView];
      v9 = [v8 loadsSynchronously];
      [v8 setLoadsSynchronously:1];
      [(SUWebView *)self loadHTMLString:@"<html><head></head><body></body></html>" baseURL:0];
      [v8 setLoadsSynchronously:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [v5 valueForKey:@"document"];
    [v10 setObject:v11 forKey:@"document"];

    v12 = [v5 valueForKey:@"iTunes"];
    [v10 setObject:v12 forKey:@"iTunes"];

    v13 = [[SUScriptDictionary alloc] initWithDictionary:v10];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

- (void)_setPinnedHeaderView:(id)a3 withTopInsetAdjustment:(double)a4
{
  v7 = a3;
  if (self->_pinnedHeaderView != v7)
  {
    v13 = v7;
    v8 = [(SUWebView *)self _scrollView];
    [(UIView *)self->_pinnedHeaderView removeFromSuperview];
    objc_storeStrong(&self->_pinnedHeaderView, a3);
    if (self->_pinnedHeaderView)
    {
      [v8 bounds];
      v10 = v9;
      [(UIView *)v13 frame];
      v12 = v11;
      [(UIView *)self->_pinnedHeaderView setAutoresizingMask:2];
      [(UIView *)self->_pinnedHeaderView setFrame:0.0, a4, v10, v12];
      [v8 _addContentSubview:self->_pinnedHeaderView atBack:0];
    }

    self->_pinnedHeaderInsetAdjustment = a4;

    v7 = v13;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  [v5 contentInset];
  v7 = v6;
  [v5 contentOffset];
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
      [v5 _setShowsBackgroundShadow:originalShowsBackgroundShadow != 0];
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
      v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v14 = self->_originalBackgroundColor;
      self->_originalBackgroundColor = v13;

      [(SUWebView *)self setBackgroundColor:self->_topBackgroundColor];
    }

    if (self->_showsTopBackgroundShadow && self->_originalShowsBackgroundShadow == 255)
    {
      self->_originalShowsBackgroundShadow = [v5 _showsBackgroundShadow];
      [v5 _setShowsBackgroundShadow:self->_showsTopBackgroundShadow];
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
    [(SUWebView *)&v18 scrollViewDidScroll:v5];
  }
}

- (void)view:(id)a3 didSetFrame:(CGRect)a4 oldFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v14 = a3;
  v15 = [(SUWebView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v15 webView:self documentViewDidSetFrame:{v12, v11, v10, v9}];
  }

  v16.receiver = self;
  v16.super_class = SUWebView;
  [(SUWebView *)&v16 view:v14 didSetFrame:v12 oldFrame:v11, v10, v9, x, y, width, height];
}

@end