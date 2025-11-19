@interface WebFrameView
+ (BOOL)_canShowMIMETypeAsHTML:(id)a3;
+ (Class)_viewClassForMIMEType:(id)a3 allowingPlugins:(BOOL)a4;
+ (id)_viewTypesAllowImageTypeOmission:(BOOL)a3;
- (BOOL)_hasScrollBars;
- (BOOL)_isFlippedDocument;
- (BOOL)_isVerticalDocument;
- (BOOL)_pageHorizontally:(BOOL)a3;
- (BOOL)_pageInBlockProgressionDirection:(BOOL)a3;
- (BOOL)_pageVertically:(BOOL)a3;
- (BOOL)_scrollLineHorizontally:(BOOL)a3;
- (BOOL)_scrollLineVertically:(BOOL)a3;
- (BOOL)_scrollOverflowInDirection:(unsigned __int8)a3 granularity:(unsigned __int8)a4;
- (BOOL)_scrollToBeginningOfDocument;
- (BOOL)_scrollToEndOfDocument;
- (BOOL)allowsScrolling;
- (BOOL)becomeFirstResponder;
- (BOOL)documentViewShouldHandlePrint;
- (BOOL)isOpaque;
- (BOOL)scrollView:(id)a3 shouldScrollToPoint:(CGPoint)a4;
- (CGRect)visibleRect;
- (Class)_customScrollViewClass;
- (Class)_viewClassForMIMEType:(id)a3;
- (NSView)documentView;
- (NakedPtr<WebCore::LocalFrame>)_web_frame;
- (WebFrame)webFrame;
- (WebFrameView)initWithFrame:(CGRect)a3;
- (float)_horizontalKeyboardScrollDistance;
- (float)_horizontalPageScrollDistance;
- (float)_verticalKeyboardScrollDistance;
- (float)_verticalPageScrollDistance;
- (id)_contentView;
- (id)_largestChildWithScrollBars;
- (id)_largestScrollableChild;
- (id)_makeDocumentViewForDataSource:(id)a3;
- (id)_scrollView;
- (id)_webcore_effectiveFirstResponder;
- (void)_forwardMouseEvent:(id)a3;
- (void)_frameSizeChanged;
- (void)_goBack;
- (void)_goForward;
- (void)_install;
- (void)_setDocumentView:(id)a3;
- (void)_setWebFrame:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)frameSizeChanged;
- (void)keyDown:(id)a3;
- (void)printDocumentView;
- (void)scrollLineDown:(id)a3;
- (void)scrollLineUp:(id)a3;
- (void)scrollPageDown:(id)a3;
- (void)scrollPageUp:(id)a3;
- (void)scrollToBeginningOfDocument:(id)a3;
- (void)scrollToEndOfDocument:(id)a3;
- (void)setAllowsScrolling:(BOOL)allowsScrolling;
- (void)setFrameSize:(CGSize)a3;
- (void)setNextKeyView:(id)a3;
- (void)viewDidMoveToWindow;
@end

@implementation WebFrameView

- (float)_verticalKeyboardScrollDistance
{
  v2 = [(WebFrameView *)self _scrollView];

  [v2 verticalLineScroll];
  return result;
}

- (NakedPtr<WebCore::LocalFrame>)_web_frame
{
  webFrame = self->_private->webFrame;
  if (webFrame)
  {
    webFrame = webFrame->_private->coreFrame.m_ptr;
  }

  *v2 = webFrame;
  return self;
}

- (void)_setDocumentView:(id)a3
{
  v5 = [(WebFrameView *)self _scrollView];
  [-[WebFrameView _webView](self "_webView")];
  *(*(v9 + 72) + 47) = 0;
  [v5 setDocumentView:a3];
  m_ptr = self->_private->webFrame->_private->coreFrame.m_ptr;
  if (m_ptr == *(*(*(m_ptr + 3) + 8) + 176))
  {
    v7 = [(WebFrameView *)self window];
    v8 = [(WebFrameView *)self documentView];

    [v7 makeFirstResponder:v8];
  }
}

- (id)_makeDocumentViewForDataSource:(id)a3
{
  v5 = [a3 _responseMIMEType];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"text/html";
  }

  v7 = [(WebFrameView *)self _viewClassForMIMEType:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [a3 representation];
    if (v9 && (v10 = v9, objc_opt_class() == v8))
    {
      v11 = v10;
    }

    else
    {
      v10 = objc_alloc_init(v8);
    }
  }

  else
  {
    v10 = 0;
  }

  [(WebFrameView *)self _setDocumentView:v10];
  if (v10)
  {
    v12 = v10;
  }

  return v10;
}

- (void)_setWebFrame:(id)a3
{
  if (!a3)
  {
    v5 = [(WebFrameView *)self documentView];
    if (objc_opt_respondsToSelector())
    {
      [(NSView *)v5 performSelector:sel_close];
    }
  }

  self->_private->webFrame = a3;
  if (!self->_private->includedInWebKitStatistics)
  {
    if ([a3 _isIncludedInWebKitStatistics])
    {
      self->_private->includedInWebKitStatistics = 1;
      ++WebFrameViewCount;
    }
  }
}

- (id)_scrollView
{
  v2 = self->_private;
  if (v2)
  {
    return v2->frameScrollView.m_ptr;
  }

  else
  {
    return 0;
  }
}

- (float)_verticalPageScrollDistance
{
  v2 = [-[WebFrameView _contentView](self "_contentView")];
  v4 = v3;
  result = v4 - WebCore::Scrollbar::maxOverlapBetweenPages(v2);
  if ((v4 * 0.8) >= result)
  {
    return v4 * 0.8;
  }

  return result;
}

+ (id)_viewTypesAllowImageTypeOmission:(BOOL)a3
{
  if (_MergedGlobals_11 == 1)
  {
    v3 = qword_1ED6A6120;
    if (byte_1ED6A6119)
    {
      return v3;
    }
  }

  else
  {
    v9 = a3;
    +[WebFrameView(WebInternal) _viewTypesAllowImageTypeOmission:]::$_0::operator()(&v10);
    a3 = v9;
    v3 = v10;
    qword_1ED6A6120 = v10;
    _MergedGlobals_11 = 1;
    if (byte_1ED6A6119)
    {
      return v3;
    }
  }

  if (!a3)
  {
    v4 = objc_opt_class();
    v5 = [+[WebHTMLView supportedImageMIMETypes](WebHTMLView "supportedImageMIMETypes")];
    v6 = [v5 nextObject];
    if (v6)
    {
      v7 = v6;
      do
      {
        if (![v3 objectForKey:v7])
        {
          [v3 setObject:v4 forKey:v7];
        }

        v7 = [v5 nextObject];
      }

      while (v7);
    }

    byte_1ED6A6119 = 1;
    return qword_1ED6A6120;
  }

  return v3;
}

+ (BOOL)_canShowMIMETypeAsHTML:(id)a3
{
  v3 = [objc_msgSend(a1 _viewTypesAllowImageTypeOmission:{1), "_webkit_objectForMIMEType:", a3}];
  v4 = objc_opt_class();

  return [v3 isSubclassOfClass:v4];
}

+ (Class)_viewClassForMIMEType:(id)a3 allowingPlugins:(BOOL)a4
{
  v5 = 0;
  if ([WebView _viewClass:&v5 andRepresentationClass:0 forMIMEType:a3 allowingPlugins:a4])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (Class)_viewClassForMIMEType:(id)a3
{
  v4 = [objc_opt_class() _viewClassForMIMEType:a3 allowingPlugins:0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v4;
  }

  v5 = [(WebFrameView *)self webFrame];

  return [(objc_class *)v4 _representationClassForWebFrame:v5];
}

- (void)_install
{
  v2 = self->_private;
  m_ptr = v2->webFrame->_private->coreFrame.m_ptr;
  v4 = *(m_ptr + 27);
  WebCore::Widget::setPlatformWidget(v4, v2->frameScrollView.m_ptr);
  if (!WebCore::Frame::ownerRenderer(m_ptr))
  {
    goto LABEL_7;
  }

  if (v4)
  {
    ++*(v4 + 2);
  }

  WebCore::RenderWidget::setWidget();
  if (!v4)
  {
    goto LABEL_7;
  }

  if (*(v4 + 2) != 1)
  {
    --*(v4 + 2);
LABEL_7:
    WebCore::LocalFrameView::updateCanHaveScrollbars(v4);
    return;
  }

  (*(*v4 + 8))(v4);
  WebCore::LocalFrameView::updateCanHaveScrollbars(v4);
}

- (void)_frameSizeChanged
{
  if ([(WebView *)[[(WebFrameView *)self webFrame] webView] drawsBackground])
  {
    [-[WebFrameView _scrollView](self "_scrollView")];
  }

  if (self)
  {
    [(WebFrameView *)self _web_frame];
    if (v3)
    {
      if (*(v3 + 216))
      {
        WebCore::LocalFrameView::availableContentSizeChanged();
      }
    }
  }
}

- (WebFrameView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v14.receiver = self;
  v14.super_class = WebFrameView;
  v5 = [(WebFrameView *)&v14 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    if (([WebFrameView initWithFrame:]::didFirstTimeInitialization & 1) == 0)
    {
      [WebFrameView initWithFrame:]::didFirstTimeInitialization = 1;
    }

    v5->_private = objc_alloc_init(WebFrameViewPrivate);
    v6 = [objc_alloc(MEMORY[0x1E69E2178]) initWithFrame:{0.0, 0.0, width, height}];
    v7 = v6;
    v8 = v5->_private;
    if (v6)
    {
      v9 = v6;
    }

    m_ptr = v8->frameScrollView.m_ptr;
    v8->frameScrollView.m_ptr = v7;
    if (m_ptr)
    {
    }

    [(WAKScrollView *)v7 setDelegate:v5];
    [(WAKScrollView *)v7 setDrawsBackground:0];
    [(WAKScrollView *)v7 setHasVerticalScroller:0];
    [(WAKScrollView *)v7 setHasHorizontalScroller:0];
    [(WAKScrollView *)v7 setAutoresizingMask:18];
    LODWORD(v11) = 1109393408;
    [(WAKScrollView *)v7 setLineScroll:v11];
    [(WebFrameView *)v5 addSubview:v7];
    v13.receiver = v5;
    v13.super_class = WebFrameView;
    [(WebFrameView *)&v13 setNextKeyView:v7];
    if (v7)
    {
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3 && v3->includedInWebKitStatistics)
  {
    --WebFrameViewCount;
  }

  self->_private = 0;
  v4.receiver = self;
  v4.super_class = WebFrameView;
  [(WebFrameView *)&v4 dealloc];
}

- (BOOL)scrollView:(id)a3 shouldScrollToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(WebFrameView *)self _webView];
  v8 = [v7 _UIKitDelegateForwarder];
  webFrame = self->_private->webFrame;

  return [v8 webView:v7 shouldScrollToPoint:webFrame forFrame:{x, y}];
}

- (WebFrame)webFrame
{
  v2 = self->_private;
  if (v2)
  {
    return v2->webFrame;
  }

  else
  {
    return 0;
  }
}

- (void)setAllowsScrolling:(BOOL)allowsScrolling
{
  v3 = [(WebFrameView *)self webFrame];
  if (v3)
  {
    m_ptr = v3->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v5 = *(m_ptr + 27);
      if (v5)
      {

        WebCore::LocalFrameView::setCanHaveScrollbars(v5);
      }
    }
  }
}

- (BOOL)allowsScrolling
{
  v2 = [(WebFrameView *)self webFrame];
  result = !v2 || (m_ptr = v2->_private->coreFrame.m_ptr) == 0 || (v4 = *(m_ptr + 27)) == 0 || (v6 = *(v4 + 64), v5 = v4 + 64, (*(v6 + 144))(v5) != 1) || (*(*v5 + 152))(v5) != 1;
  return result;
}

- (NSView)documentView
{
  v2 = [(WebFrameView *)self _scrollView];

  return [v2 documentView];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(WebFrameView *)self window];
  if ([v3 keyViewSelectionDirection] == 2)
  {
    v4 = [(WebFrameView *)self previousValidKeyView];
    if (v4)
    {
      v5 = v4;
      if (v4 != self)
      {
        goto LABEL_8;
      }
    }

    v6 = [(WebView *)[[(WebFrameView *)self webFrame] webView] previousValidKeyView];
LABEL_7:
    v5 = v6;
LABEL_8:
    [v3 makeFirstResponder:v5];
    return 1;
  }

  if ([-[WebFrameView _scrollView](self "_scrollView")])
  {
    v6 = [(WebFrameView *)self _scrollView];
    goto LABEL_7;
  }

  return 1;
}

- (void)setNextKeyView:(id)a3
{
  if ([(WebFrameView *)self _scrollView])
  {
    v5 = [(WebFrameView *)self _scrollView];

    [v5 setNextKeyView:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebFrameView;
    [(WebFrameView *)&v6 setNextKeyView:a3];
  }
}

- (BOOL)isOpaque
{
  v2 = [(WebFrameView *)self _webView];

  return [v2 drawsBackground];
}

- (void)drawRect:(CGRect)a3
{
  if (![(WebFrameView *)self documentView]|| ([(NSView *)[(WebFrameView *)self documentView] frame], v4 == 0.0) || [[(WebFrameView *)self webFrame] _isCommitting])
  {
    if ([-[WebFrameView _webView](self "_webView")])
    {
      v5 = WKGetCurrentGraphicsContext();
      WebCore::cachedCGColor();
      CGContextSetFillColorWithColor(v5, color);
      if (color)
      {
        CFRelease(color);
      }

      WKRectFill();
    }
  }
}

- (CGRect)visibleRect
{
  if (self->_private)
  {
    if ([[(WebFrameView *)self webFrame] _getVisibleRect:&v17])
    {
      if (NSIsEmptyRect(v17) || (v15.receiver = self, v15.super_class = WebFrameView, [(WebFrameView *)&v15 visibleRect], x = v19.origin.x, y = v19.origin.y, width = v19.size.width, height = v19.size.height, NSIsEmptyRect(v19)))
      {
        v7 = *MEMORY[0x1E696AA80];
        v8 = *(MEMORY[0x1E696AA80] + 8);
        v9 = *(MEMORY[0x1E696AA80] + 16);
        v10 = *(MEMORY[0x1E696AA80] + 24);
      }

      else
      {
        [(WebFrameView *)self frame];
        v20.origin.x = v17.origin.x - v11;
        v14 = v12 + v13;
        v20.size.width = v17.size.width;
        v20.size.height = v17.size.height;
        v20.origin.y = v14 - (v17.origin.y + v17.size.height);
        v17.origin.x = v20.origin.x;
        v17.origin.y = v20.origin.y;
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        *&v7 = NSIntersectionRect(v20, v22);
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = WebFrameView;
      [(WebFrameView *)&v16 visibleRect];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WebFrameView;
    [(WebFrameView *)&v18 visibleRect];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setFrameSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(WebFrameView *)self frame];
  v7.width = width;
  v7.height = height;
  if (!NSEqualSizes(v7, v8))
  {
    [(WebFrameView *)self _frameSizeChanged];
  }

  v6.receiver = self;
  v6.super_class = WebFrameView;
  [(WebFrameView *)&v6 setFrameSize:width, height];
}

- (void)viewDidMoveToWindow
{
  if (self->_private && [(WebView *)[[(WebFrameView *)self webFrame] webView] drawsBackground])
  {
    [-[WebFrameView _scrollView](self "_scrollView")];
  }

  v3.receiver = self;
  v3.super_class = WebFrameView;
  [(WebFrameView *)&v3 viewDidMoveToWindow];
}

- (BOOL)_scrollOverflowInDirection:(unsigned __int8)a3 granularity:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  [(WebFrameView *)self documentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = [(WebFrameView *)self webFrame];
  if (!v7)
  {
    return 0;
  }

  m_ptr = v7->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v9 = *(m_ptr + 42);

  return MEMORY[0x1EEE54AE8](v9, v5, v4, 0);
}

- (BOOL)_isVerticalDocument
{
  if (!self)
  {
    return 1;
  }

  [(WebFrameView *)self _web_frame];
  return !v5 || (v2 = *(v5 + 224)) == 0 || (v3 = *(v2 + 2024)) == 0 || (*(v3 + 120) & 1) == 0;
}

- (BOOL)_isFlippedDocument
{
  if (self)
  {
    [(WebFrameView *)self _web_frame];
    if (v5 && (v2 = *(v5 + 224)) != 0 && (v3 = *(v2 + 2024)) != 0)
    {
      LODWORD(self) = (*(v3 + 120) >> 1) & 1;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (BOOL)_scrollToBeginningOfDocument
{
  if ([(WebFrameView *)self _scrollOverflowInDirection:0 granularity:2])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(WebFrameView *)self _isScrollable];
    if (v3)
    {
      [objc_msgSend(-[WebFrameView _scrollView](self "_scrollView")];
      v5 = v4;
      v7 = v6;
      [-[WebFrameView _scrollView](self "_scrollView")];
      [-[WebFrameView _scrollView](self _scrollView];
      *&v11[1] = v7 + v9;
      LOBYTE(v3) = [-[WebFrameView _contentView](self "_contentView")];
    }
  }

  return v3;
}

- (BOOL)_scrollToEndOfDocument
{
  v3 = 1;
  if (![(WebFrameView *)self _scrollOverflowInDirection:1 granularity:2])
  {
    if ([(WebFrameView *)self _isScrollable])
    {
      [objc_msgSend(-[WebFrameView _scrollView](self "_scrollView")];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [(WebFrameView *)self _isVerticalDocument];
      v13 = [(WebFrameView *)self _isFlippedDocument];
      if (v12)
      {
        v14 = v7 + v11;
        if (v13)
        {
          v14 = v7;
        }

        v20 = v14;
        [-[WebFrameView _scrollView](self "_scrollView")];
        v19 = v5 + v15;
      }

      else
      {
        v16 = v5 + v9;
        if (v13)
        {
          v16 = v5;
        }

        [-[WebFrameView _scrollView](self _scrollView];
        v20 = v7 + v17;
      }

      return [-[WebFrameView _contentView](self _contentView];
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (void)scrollToBeginningOfDocument:(id)a3
{
  if (![(WebFrameView *)self _scrollToBeginningOfDocument])
  {
    v5 = [(WebFrameView *)self _largestScrollableChild];
    if (!v5 || ([v5 _scrollToBeginningOfDocument] & 1) == 0)
    {
      v6 = [(WAKResponder *)self nextResponder];

      [v6 tryToPerform:sel_scrollToBeginningOfDocument_ with:a3];
    }
  }
}

- (void)scrollToEndOfDocument:(id)a3
{
  if (![(WebFrameView *)self _scrollToEndOfDocument])
  {
    v5 = [(WebFrameView *)self _largestScrollableChild];
    if (!v5 || ([v5 _scrollToEndOfDocument] & 1) == 0)
    {
      v6 = [(WAKResponder *)self nextResponder];

      [v6 tryToPerform:sel_scrollToEndOfDocument_ with:a3];
    }
  }
}

- (void)_goBack
{
  v2 = [(WebFrameView *)self _webView];

  [v2 goBack];
}

- (void)_goForward
{
  v2 = [(WebFrameView *)self _webView];

  [v2 goForward];
}

- (float)_horizontalKeyboardScrollDistance
{
  v2 = [(WebFrameView *)self _scrollView];

  [v2 horizontalLineScroll];
  return result;
}

- (float)_horizontalPageScrollDistance
{
  v2 = [-[WebFrameView _contentView](self "_contentView")];
  v4 = v3;
  result = v4 - WebCore::Scrollbar::maxOverlapBetweenPages(v2);
  if ((v4 * 0.8) >= result)
  {
    return v4 * 0.8;
  }

  return result;
}

- (BOOL)_pageVertically:(BOOL)a3
{
  v3 = a3;
  if ([(WebFrameView *)self _scrollOverflowInDirection:!a3 granularity:1])
  {
    return 1;
  }

  if ([(WebFrameView *)self _isScrollable])
  {
    [(WebFrameView *)self _verticalPageScrollDistance];
    if (v3)
    {
      *&v6 = -*&v6;
    }

    return [(WebFrameView *)self _scrollVerticallyBy:v6];
  }

  else
  {
    v7 = [(WebFrameView *)self _largestScrollableChild];

    return [v7 _pageVertically:v3];
  }
}

- (BOOL)_pageHorizontally:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if ([(WebFrameView *)self _scrollOverflowInDirection:v5 granularity:1])
  {
    return 1;
  }

  if ([(WebFrameView *)self _isScrollable])
  {
    [(WebFrameView *)self _horizontalPageScrollDistance];
    if (v3)
    {
      *&v7 = -*&v7;
    }

    return [(WebFrameView *)self _scrollHorizontallyBy:v7];
  }

  else
  {
    v8 = [(WebFrameView *)self _largestScrollableChild];

    return [v8 _pageHorizontally:v3];
  }
}

- (BOOL)_pageInBlockProgressionDirection:(BOOL)a3
{
  v3 = a3;
  v5 = [(WebFrameView *)self _isVerticalDocument];
  v6 = [(WebFrameView *)self _isFlippedDocument]^ v3;
  if (v5)
  {

    return [(WebFrameView *)self _pageVertically:v6];
  }

  else
  {

    return [(WebFrameView *)self _pageHorizontally:v6];
  }
}

- (BOOL)_scrollLineVertically:(BOOL)a3
{
  v3 = a3;
  if ([(WebFrameView *)self _scrollOverflowInDirection:!a3 granularity:0])
  {
    return 1;
  }

  if ([(WebFrameView *)self _isScrollable])
  {
    [(WebFrameView *)self _verticalKeyboardScrollDistance];
    if (v3)
    {
      *&v6 = -*&v6;
    }

    return [(WebFrameView *)self _scrollVerticallyBy:v6];
  }

  else
  {
    v7 = [(WebFrameView *)self _largestScrollableChild];

    return [v7 _scrollLineVertically:v3];
  }
}

- (BOOL)_scrollLineHorizontally:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if ([(WebFrameView *)self _scrollOverflowInDirection:v5 granularity:0])
  {
    return 1;
  }

  if ([(WebFrameView *)self _isScrollable])
  {
    [(WebFrameView *)self _horizontalKeyboardScrollDistance];
    if (v3)
    {
      *&v7 = -*&v7;
    }

    return [(WebFrameView *)self _scrollHorizontallyBy:v7];
  }

  else
  {
    v8 = [(WebFrameView *)self _largestScrollableChild];

    return [v8 _scrollLineHorizontally:v3];
  }
}

- (void)scrollPageUp:(id)a3
{
  if (![(WebFrameView *)self _pageInBlockProgressionDirection:1])
  {
    v5 = [(WAKResponder *)self nextResponder];

    [v5 tryToPerform:sel_scrollPageUp_ with:a3];
  }
}

- (void)scrollPageDown:(id)a3
{
  if (![(WebFrameView *)self _pageInBlockProgressionDirection:0])
  {
    v5 = [(WAKResponder *)self nextResponder];

    [v5 tryToPerform:sel_scrollPageDown_ with:a3];
  }
}

- (void)scrollLineUp:(id)a3
{
  if (![(WebFrameView *)self _scrollLineVertically:1])
  {
    v5 = [(WAKResponder *)self nextResponder];

    [v5 tryToPerform:sel_scrollLineUp_ with:a3];
  }
}

- (void)scrollLineDown:(id)a3
{
  if (![(WebFrameView *)self _scrollLineVertically:0])
  {
    v5 = [(WAKResponder *)self nextResponder];

    [v5 tryToPerform:sel_scrollLineDown_ with:a3];
  }
}

- (void)_forwardMouseEvent:(id)a3
{
  v5 = [(WebFrameView *)self superview];
  if ([v5 conformsToProtocol:&unk_1F475AD50])
  {
    v6 = [objc_msgSend(v5 "_web_parentWebFrameView")];
    v7 = a3;
  }

  else
  {
    v6 = [(WAKResponder *)self nextResponder];
    v7 = a3;
  }

  [v6 handleEvent:v7];
}

- (void)keyDown:(id)a3
{
  v5 = [a3 characters];
  v14 = [a3 modifierFlags];
  if (self)
  {
    [(WebFrameView *)self _web_frame];
    if (v17)
    {
      v15 = *(*(*(*(*(v17 + 24) + 8) + 152) + 16) + 65);
      v6 = [v5 length];
      if (v6 < 1)
      {
LABEL_73:
        v16.receiver = self;
        v16.super_class = WebFrameView;
        [(WAKResponder *)&v16 keyDown:a3];
        return;
      }
    }

    else
    {
      v15 = 0;
      v6 = [v5 length];
      if (v6 < 1)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v6 = [v5 length];
    if (v6 < 1)
    {
      goto LABEL_73;
    }
  }

  v7 = 0;
  v8 = v14 & 0x60000;
  v9 = v6 & 0x7FFFFFFF;
  v10 = 1;
  do
  {
    v11 = [v5 characterAtIndex:v7];
    if (v11 > 63234)
    {
      if (v11 <= 63274)
      {
        if (v11 != 63235)
        {
          if (v11 != 63273)
          {
            goto LABEL_11;
          }

          if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild])
          {
            goto LABEL_10;
          }

LABEL_49:
          [(WebFrameView *)self scrollToBeginningOfDocument:0];
          goto LABEL_62;
        }

        if (v8)
        {
          goto LABEL_10;
        }

        if ((v14 & 0x100000) != 0)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_69:
          [(WebFrameView *)self _goForward];
          goto LABEL_62;
        }

        if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild])
        {
          goto LABEL_10;
        }

        v12 = self;
        v13 = 0;
        if ((v14 & 0x80000) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_21;
      }

      if (v11 == 63275)
      {
        if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild])
        {
          goto LABEL_10;
        }

LABEL_58:
        [(WebFrameView *)self scrollToEndOfDocument:0];
        goto LABEL_62;
      }

      if (v11 == 63276)
      {
        if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild])
        {
          goto LABEL_10;
        }

LABEL_61:
        [(WebFrameView *)self scrollPageUp:0];
        goto LABEL_62;
      }

      if (v11 != 63277)
      {
        goto LABEL_11;
      }

      if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild])
      {
        goto LABEL_10;
      }

LABEL_57:
      [(WebFrameView *)self scrollPageDown:0];
      goto LABEL_62;
    }

    if (v11 <= 63231)
    {
      if (v11 != 32)
      {
        if (v11 != 127)
        {
          goto LABEL_11;
        }

        if ((v15 & 1) == 0 || ![objc_msgSend(-[WebFrameView _webView](self "_webView")])
        {
          goto LABEL_10;
        }

        if ((v14 & 0x20000) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild]|| [(WebFrameView *)self _firstResponderIsFormControl])
      {
LABEL_10:
        v10 = 1;
        goto LABEL_11;
      }

      if ((v14 & 0x20000) != 0)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }

    if (v11 == 63232)
    {
      if (v8)
      {
        goto LABEL_10;
      }

      if ((v14 & 0x100000) != 0)
      {
        goto LABEL_49;
      }

      if ((v14 & 0x80000) != 0)
      {
        goto LABEL_61;
      }

      [(WebFrameView *)self scrollLineUp:0];
    }

    else
    {
      if (v11 != 63233)
      {
        if (v8)
        {
          goto LABEL_10;
        }

        if ((v14 & 0x100000) != 0)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_71:
          [(WebFrameView *)self _goBack];
          goto LABEL_62;
        }

        if (![(WebFrameView *)self allowsScrolling]&& ![(WebFrameView *)self _largestScrollableChild])
        {
          goto LABEL_10;
        }

        v12 = self;
        v13 = 1;
        if ((v14 & 0x80000) == 0)
        {
LABEL_67:
          [(WebFrameView *)v12 _scrollLineHorizontally:v13];
          goto LABEL_62;
        }

LABEL_21:
        [(WebFrameView *)v12 _pageHorizontally:v13];
        goto LABEL_62;
      }

      if (v8)
      {
        goto LABEL_10;
      }

      if ((v14 & 0x100000) != 0)
      {
        goto LABEL_58;
      }

      if ((v14 & 0x80000) != 0)
      {
        goto LABEL_57;
      }

      [(WebFrameView *)self scrollLineDown:0];
    }

LABEL_62:
    v10 = 0;
LABEL_11:
    ++v7;
  }

  while (v9 != v7);
  if (v10)
  {
    goto LABEL_73;
  }
}

- (id)_webcore_effectiveFirstResponder
{
  v3 = [(WebFrameView *)self documentView];
  if (v3)
  {

    return [(NSView *)v3 _webcore_effectiveFirstResponder];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WebFrameView;
    return [(WebFrameView *)&v5 _webcore_effectiveFirstResponder];
  }
}

- (BOOL)documentViewShouldHandlePrint
{
  v2 = [-[WebFrameView _scrollView](self "_scrollView")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 documentViewShouldHandlePrint];
}

- (void)printDocumentView
{
  v2 = [-[WebFrameView _scrollView](self "_scrollView")];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {

      [v3 printDocumentView];
    }
  }
}

- (id)_largestScrollableChild
{
  v2 = [[(WebFrameView *)self webFrame] childFrames];
  if (![(NSArray *)v2 count])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = [-[NSArray objectAtIndex:](v2 objectAtIndex:{v3), "frameView"}];
    if (([v6 _isScrollable] & 1) == 0)
    {
      v6 = [v6 _largestScrollableChild];
    }

    if (v6)
    {
      [v6 _area];
      if (v7 >= 1.0)
      {
        if (!v4 || (v8 = v7, [v4 _area], v8 > v9))
        {
          v4 = v6;
        }
      }
    }

    v3 = v5++;
  }

  while ([(NSArray *)v2 count]> v3);
  return v4;
}

- (BOOL)_hasScrollBars
{
  v2 = [(WebFrameView *)self _scrollView];
  if ([v2 hasHorizontalScroller])
  {
    return 1;
  }

  return [v2 hasVerticalScroller];
}

- (id)_largestChildWithScrollBars
{
  v2 = [[(WebFrameView *)self webFrame] childFrames];
  if (![(NSArray *)v2 count])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = [-[NSArray objectAtIndex:](v2 objectAtIndex:{v3), "frameView"}];
    if (([v6 _hasScrollBars] & 1) == 0)
    {
      v6 = [v6 _largestChildWithScrollBars];
    }

    if (v6)
    {
      [v6 _area];
      if (v7 >= 1.0)
      {
        if (!v4 || (v8 = v7, [v4 _area], v8 > v9))
        {
          v4 = v6;
        }
      }
    }

    v3 = v5++;
  }

  while ([(NSArray *)v2 count]> v3);
  return v4;
}

- (id)_contentView
{
  v2 = [(WebFrameView *)self _scrollView];

  return [v2 contentView];
}

- (Class)_customScrollViewClass
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 0;
  }

  return objc_opt_class();
}

- (void)frameSizeChanged
{
  if (([-[WebFrameView _webView](self "_webView")] & 1) == 0)
  {
    [(WebFrameView *)self _frameSizeChanged];
  }

  v3.receiver = self;
  v3.super_class = WebFrameView;
  [(WebFrameView *)&v3 frameSizeChanged];
}

@end