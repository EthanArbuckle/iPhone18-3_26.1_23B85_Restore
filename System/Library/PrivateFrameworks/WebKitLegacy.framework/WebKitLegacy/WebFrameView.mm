@interface WebFrameView
+ (BOOL)_canShowMIMETypeAsHTML:(id)l;
+ (Class)_viewClassForMIMEType:(id)type allowingPlugins:(BOOL)plugins;
+ (id)_viewTypesAllowImageTypeOmission:(BOOL)omission;
- (BOOL)_hasScrollBars;
- (BOOL)_isFlippedDocument;
- (BOOL)_isVerticalDocument;
- (BOOL)_pageHorizontally:(BOOL)horizontally;
- (BOOL)_pageInBlockProgressionDirection:(BOOL)direction;
- (BOOL)_pageVertically:(BOOL)vertically;
- (BOOL)_scrollLineHorizontally:(BOOL)horizontally;
- (BOOL)_scrollLineVertically:(BOOL)vertically;
- (BOOL)_scrollOverflowInDirection:(unsigned __int8)direction granularity:(unsigned __int8)granularity;
- (BOOL)_scrollToBeginningOfDocument;
- (BOOL)_scrollToEndOfDocument;
- (BOOL)allowsScrolling;
- (BOOL)becomeFirstResponder;
- (BOOL)documentViewShouldHandlePrint;
- (BOOL)isOpaque;
- (BOOL)scrollView:(id)view shouldScrollToPoint:(CGPoint)point;
- (CGRect)visibleRect;
- (Class)_customScrollViewClass;
- (Class)_viewClassForMIMEType:(id)type;
- (NSView)documentView;
- (NakedPtr<WebCore::LocalFrame>)_web_frame;
- (WebFrame)webFrame;
- (WebFrameView)initWithFrame:(CGRect)frame;
- (float)_horizontalKeyboardScrollDistance;
- (float)_horizontalPageScrollDistance;
- (float)_verticalKeyboardScrollDistance;
- (float)_verticalPageScrollDistance;
- (id)_contentView;
- (id)_largestChildWithScrollBars;
- (id)_largestScrollableChild;
- (id)_makeDocumentViewForDataSource:(id)source;
- (id)_scrollView;
- (id)_webcore_effectiveFirstResponder;
- (void)_forwardMouseEvent:(id)event;
- (void)_frameSizeChanged;
- (void)_goBack;
- (void)_goForward;
- (void)_install;
- (void)_setDocumentView:(id)view;
- (void)_setWebFrame:(id)frame;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)frameSizeChanged;
- (void)keyDown:(id)down;
- (void)printDocumentView;
- (void)scrollLineDown:(id)down;
- (void)scrollLineUp:(id)up;
- (void)scrollPageDown:(id)down;
- (void)scrollPageUp:(id)up;
- (void)scrollToBeginningOfDocument:(id)document;
- (void)scrollToEndOfDocument:(id)document;
- (void)setAllowsScrolling:(BOOL)allowsScrolling;
- (void)setFrameSize:(CGSize)size;
- (void)setNextKeyView:(id)view;
- (void)viewDidMoveToWindow;
@end

@implementation WebFrameView

- (float)_verticalKeyboardScrollDistance
{
  _scrollView = [(WebFrameView *)self _scrollView];

  [_scrollView verticalLineScroll];
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

- (void)_setDocumentView:(id)view
{
  _scrollView = [(WebFrameView *)self _scrollView];
  [-[WebFrameView _webView](self "_webView")];
  *(*(v9 + 72) + 47) = 0;
  [_scrollView setDocumentView:view];
  m_ptr = self->_private->webFrame->_private->coreFrame.m_ptr;
  if (m_ptr == *(*(*(m_ptr + 3) + 8) + 176))
  {
    window = [(WebFrameView *)self window];
    documentView = [(WebFrameView *)self documentView];

    [window makeFirstResponder:documentView];
  }
}

- (id)_makeDocumentViewForDataSource:(id)source
{
  _responseMIMEType = [source _responseMIMEType];
  if (_responseMIMEType)
  {
    v6 = _responseMIMEType;
  }

  else
  {
    v6 = @"text/html";
  }

  v7 = [(WebFrameView *)self _viewClassForMIMEType:v6];
  if (v7)
  {
    v8 = v7;
    representation = [source representation];
    if (representation && (v10 = representation, objc_opt_class() == v8))
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

- (void)_setWebFrame:(id)frame
{
  if (!frame)
  {
    documentView = [(WebFrameView *)self documentView];
    if (objc_opt_respondsToSelector())
    {
      [(NSView *)documentView performSelector:sel_close];
    }
  }

  self->_private->webFrame = frame;
  if (!self->_private->includedInWebKitStatistics)
  {
    if ([frame _isIncludedInWebKitStatistics])
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

+ (id)_viewTypesAllowImageTypeOmission:(BOOL)omission
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
    omissionCopy = omission;
    +[WebFrameView(WebInternal) _viewTypesAllowImageTypeOmission:]::$_0::operator()(&v10);
    omission = omissionCopy;
    v3 = v10;
    qword_1ED6A6120 = v10;
    _MergedGlobals_11 = 1;
    if (byte_1ED6A6119)
    {
      return v3;
    }
  }

  if (!omission)
  {
    v4 = objc_opt_class();
    v5 = [+[WebHTMLView supportedImageMIMETypes](WebHTMLView "supportedImageMIMETypes")];
    nextObject = [v5 nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        if (![v3 objectForKey:nextObject2])
        {
          [v3 setObject:v4 forKey:nextObject2];
        }

        nextObject2 = [v5 nextObject];
      }

      while (nextObject2);
    }

    byte_1ED6A6119 = 1;
    return qword_1ED6A6120;
  }

  return v3;
}

+ (BOOL)_canShowMIMETypeAsHTML:(id)l
{
  v3 = [objc_msgSend(self _viewTypesAllowImageTypeOmission:{1), "_webkit_objectForMIMEType:", l}];
  v4 = objc_opt_class();

  return [v3 isSubclassOfClass:v4];
}

+ (Class)_viewClassForMIMEType:(id)type allowingPlugins:(BOOL)plugins
{
  v5 = 0;
  if ([WebView _viewClass:&v5 andRepresentationClass:0 forMIMEType:type allowingPlugins:plugins])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (Class)_viewClassForMIMEType:(id)type
{
  v4 = [objc_opt_class() _viewClassForMIMEType:type allowingPlugins:0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v4;
  }

  webFrame = [(WebFrameView *)self webFrame];

  return [(objc_class *)v4 _representationClassForWebFrame:webFrame];
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

- (WebFrameView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v14.receiver = self;
  v14.super_class = WebFrameView;
  v5 = [(WebFrameView *)&v14 initWithFrame:frame.origin.x, frame.origin.y];
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

- (BOOL)scrollView:(id)view shouldScrollToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _webView = [(WebFrameView *)self _webView];
  _UIKitDelegateForwarder = [_webView _UIKitDelegateForwarder];
  webFrame = self->_private->webFrame;

  return [_UIKitDelegateForwarder webView:_webView shouldScrollToPoint:webFrame forFrame:{x, y}];
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
  webFrame = [(WebFrameView *)self webFrame];
  if (webFrame)
  {
    m_ptr = webFrame->_private->coreFrame.m_ptr;
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
  webFrame = [(WebFrameView *)self webFrame];
  result = !webFrame || (m_ptr = webFrame->_private->coreFrame.m_ptr) == 0 || (v4 = *(m_ptr + 27)) == 0 || (v6 = *(v4 + 64), v5 = v4 + 64, (*(v6 + 144))(v5) != 1) || (*(*v5 + 152))(v5) != 1;
  return result;
}

- (NSView)documentView
{
  _scrollView = [(WebFrameView *)self _scrollView];

  return [_scrollView documentView];
}

- (BOOL)becomeFirstResponder
{
  window = [(WebFrameView *)self window];
  if ([window keyViewSelectionDirection] == 2)
  {
    previousValidKeyView = [(WebFrameView *)self previousValidKeyView];
    if (previousValidKeyView)
    {
      v5 = previousValidKeyView;
      if (previousValidKeyView != self)
      {
        goto LABEL_8;
      }
    }

    previousValidKeyView2 = [(WebView *)[[(WebFrameView *)self webFrame] webView] previousValidKeyView];
LABEL_7:
    v5 = previousValidKeyView2;
LABEL_8:
    [window makeFirstResponder:v5];
    return 1;
  }

  if ([-[WebFrameView _scrollView](self "_scrollView")])
  {
    previousValidKeyView2 = [(WebFrameView *)self _scrollView];
    goto LABEL_7;
  }

  return 1;
}

- (void)setNextKeyView:(id)view
{
  if ([(WebFrameView *)self _scrollView])
  {
    _scrollView = [(WebFrameView *)self _scrollView];

    [_scrollView setNextKeyView:view];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebFrameView;
    [(WebFrameView *)&v6 setNextKeyView:view];
  }
}

- (BOOL)isOpaque
{
  _webView = [(WebFrameView *)self _webView];

  return [_webView drawsBackground];
}

- (void)drawRect:(CGRect)rect
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

- (void)setFrameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (BOOL)_scrollOverflowInDirection:(unsigned __int8)direction granularity:(unsigned __int8)granularity
{
  granularityCopy = granularity;
  directionCopy = direction;
  [(WebFrameView *)self documentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  webFrame = [(WebFrameView *)self webFrame];
  if (!webFrame)
  {
    return 0;
  }

  m_ptr = webFrame->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v9 = *(m_ptr + 42);

  return MEMORY[0x1EEE54AE8](v9, directionCopy, granularityCopy, 0);
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
    LOBYTE(_isScrollable) = 1;
  }

  else
  {
    _isScrollable = [(WebFrameView *)self _isScrollable];
    if (_isScrollable)
    {
      [objc_msgSend(-[WebFrameView _scrollView](self "_scrollView")];
      v5 = v4;
      v7 = v6;
      [-[WebFrameView _scrollView](self "_scrollView")];
      [-[WebFrameView _scrollView](self _scrollView];
      *&v11[1] = v7 + v9;
      LOBYTE(_isScrollable) = [-[WebFrameView _contentView](self "_contentView")];
    }
  }

  return _isScrollable;
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
      _isVerticalDocument = [(WebFrameView *)self _isVerticalDocument];
      _isFlippedDocument = [(WebFrameView *)self _isFlippedDocument];
      if (_isVerticalDocument)
      {
        v14 = v7 + v11;
        if (_isFlippedDocument)
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
        if (_isFlippedDocument)
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

- (void)scrollToBeginningOfDocument:(id)document
{
  if (![(WebFrameView *)self _scrollToBeginningOfDocument])
  {
    _largestScrollableChild = [(WebFrameView *)self _largestScrollableChild];
    if (!_largestScrollableChild || ([_largestScrollableChild _scrollToBeginningOfDocument] & 1) == 0)
    {
      nextResponder = [(WAKResponder *)self nextResponder];

      [nextResponder tryToPerform:sel_scrollToBeginningOfDocument_ with:document];
    }
  }
}

- (void)scrollToEndOfDocument:(id)document
{
  if (![(WebFrameView *)self _scrollToEndOfDocument])
  {
    _largestScrollableChild = [(WebFrameView *)self _largestScrollableChild];
    if (!_largestScrollableChild || ([_largestScrollableChild _scrollToEndOfDocument] & 1) == 0)
    {
      nextResponder = [(WAKResponder *)self nextResponder];

      [nextResponder tryToPerform:sel_scrollToEndOfDocument_ with:document];
    }
  }
}

- (void)_goBack
{
  _webView = [(WebFrameView *)self _webView];

  [_webView goBack];
}

- (void)_goForward
{
  _webView = [(WebFrameView *)self _webView];

  [_webView goForward];
}

- (float)_horizontalKeyboardScrollDistance
{
  _scrollView = [(WebFrameView *)self _scrollView];

  [_scrollView horizontalLineScroll];
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

- (BOOL)_pageVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  if ([(WebFrameView *)self _scrollOverflowInDirection:!vertically granularity:1])
  {
    return 1;
  }

  if ([(WebFrameView *)self _isScrollable])
  {
    [(WebFrameView *)self _verticalPageScrollDistance];
    if (verticallyCopy)
    {
      *&v6 = -*&v6;
    }

    return [(WebFrameView *)self _scrollVerticallyBy:v6];
  }

  else
  {
    _largestScrollableChild = [(WebFrameView *)self _largestScrollableChild];

    return [_largestScrollableChild _pageVertically:verticallyCopy];
  }
}

- (BOOL)_pageHorizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  if (horizontally)
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
    if (horizontallyCopy)
    {
      *&v7 = -*&v7;
    }

    return [(WebFrameView *)self _scrollHorizontallyBy:v7];
  }

  else
  {
    _largestScrollableChild = [(WebFrameView *)self _largestScrollableChild];

    return [_largestScrollableChild _pageHorizontally:horizontallyCopy];
  }
}

- (BOOL)_pageInBlockProgressionDirection:(BOOL)direction
{
  directionCopy = direction;
  _isVerticalDocument = [(WebFrameView *)self _isVerticalDocument];
  v6 = [(WebFrameView *)self _isFlippedDocument]^ directionCopy;
  if (_isVerticalDocument)
  {

    return [(WebFrameView *)self _pageVertically:v6];
  }

  else
  {

    return [(WebFrameView *)self _pageHorizontally:v6];
  }
}

- (BOOL)_scrollLineVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  if ([(WebFrameView *)self _scrollOverflowInDirection:!vertically granularity:0])
  {
    return 1;
  }

  if ([(WebFrameView *)self _isScrollable])
  {
    [(WebFrameView *)self _verticalKeyboardScrollDistance];
    if (verticallyCopy)
    {
      *&v6 = -*&v6;
    }

    return [(WebFrameView *)self _scrollVerticallyBy:v6];
  }

  else
  {
    _largestScrollableChild = [(WebFrameView *)self _largestScrollableChild];

    return [_largestScrollableChild _scrollLineVertically:verticallyCopy];
  }
}

- (BOOL)_scrollLineHorizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  if (horizontally)
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
    if (horizontallyCopy)
    {
      *&v7 = -*&v7;
    }

    return [(WebFrameView *)self _scrollHorizontallyBy:v7];
  }

  else
  {
    _largestScrollableChild = [(WebFrameView *)self _largestScrollableChild];

    return [_largestScrollableChild _scrollLineHorizontally:horizontallyCopy];
  }
}

- (void)scrollPageUp:(id)up
{
  if (![(WebFrameView *)self _pageInBlockProgressionDirection:1])
  {
    nextResponder = [(WAKResponder *)self nextResponder];

    [nextResponder tryToPerform:sel_scrollPageUp_ with:up];
  }
}

- (void)scrollPageDown:(id)down
{
  if (![(WebFrameView *)self _pageInBlockProgressionDirection:0])
  {
    nextResponder = [(WAKResponder *)self nextResponder];

    [nextResponder tryToPerform:sel_scrollPageDown_ with:down];
  }
}

- (void)scrollLineUp:(id)up
{
  if (![(WebFrameView *)self _scrollLineVertically:1])
  {
    nextResponder = [(WAKResponder *)self nextResponder];

    [nextResponder tryToPerform:sel_scrollLineUp_ with:up];
  }
}

- (void)scrollLineDown:(id)down
{
  if (![(WebFrameView *)self _scrollLineVertically:0])
  {
    nextResponder = [(WAKResponder *)self nextResponder];

    [nextResponder tryToPerform:sel_scrollLineDown_ with:down];
  }
}

- (void)_forwardMouseEvent:(id)event
{
  superview = [(WebFrameView *)self superview];
  if ([superview conformsToProtocol:&unk_1F475AD50])
  {
    nextResponder = [objc_msgSend(superview "_web_parentWebFrameView")];
    eventCopy2 = event;
  }

  else
  {
    nextResponder = [(WAKResponder *)self nextResponder];
    eventCopy2 = event;
  }

  [nextResponder handleEvent:eventCopy2];
}

- (void)keyDown:(id)down
{
  characters = [down characters];
  modifierFlags = [down modifierFlags];
  if (self)
  {
    [(WebFrameView *)self _web_frame];
    if (v17)
    {
      v15 = *(*(*(*(*(v17 + 24) + 8) + 152) + 16) + 65);
      v6 = [characters length];
      if (v6 < 1)
      {
LABEL_73:
        v16.receiver = self;
        v16.super_class = WebFrameView;
        [(WAKResponder *)&v16 keyDown:down];
        return;
      }
    }

    else
    {
      v15 = 0;
      v6 = [characters length];
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
    v6 = [characters length];
    if (v6 < 1)
    {
      goto LABEL_73;
    }
  }

  v7 = 0;
  v8 = modifierFlags & 0x60000;
  v9 = v6 & 0x7FFFFFFF;
  v10 = 1;
  do
  {
    v11 = [characters characterAtIndex:v7];
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

        if ((modifierFlags & 0x100000) != 0)
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

        selfCopy2 = self;
        v13 = 0;
        if ((modifierFlags & 0x80000) == 0)
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

        if ((modifierFlags & 0x20000) == 0)
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

      if ((modifierFlags & 0x20000) != 0)
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

      if ((modifierFlags & 0x100000) != 0)
      {
        goto LABEL_49;
      }

      if ((modifierFlags & 0x80000) != 0)
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

        if ((modifierFlags & 0x100000) != 0)
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

        selfCopy2 = self;
        v13 = 1;
        if ((modifierFlags & 0x80000) == 0)
        {
LABEL_67:
          [(WebFrameView *)selfCopy2 _scrollLineHorizontally:v13];
          goto LABEL_62;
        }

LABEL_21:
        [(WebFrameView *)selfCopy2 _pageHorizontally:v13];
        goto LABEL_62;
      }

      if (v8)
      {
        goto LABEL_10;
      }

      if ((modifierFlags & 0x100000) != 0)
      {
        goto LABEL_58;
      }

      if ((modifierFlags & 0x80000) != 0)
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
  documentView = [(WebFrameView *)self documentView];
  if (documentView)
  {

    return [(NSView *)documentView _webcore_effectiveFirstResponder];
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
  childFrames = [[(WebFrameView *)self webFrame] childFrames];
  if (![(NSArray *)childFrames count])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    _largestScrollableChild = [-[NSArray objectAtIndex:](childFrames objectAtIndex:{v3), "frameView"}];
    if (([_largestScrollableChild _isScrollable] & 1) == 0)
    {
      _largestScrollableChild = [_largestScrollableChild _largestScrollableChild];
    }

    if (_largestScrollableChild)
    {
      [_largestScrollableChild _area];
      if (v7 >= 1.0)
      {
        if (!v4 || (v8 = v7, [v4 _area], v8 > v9))
        {
          v4 = _largestScrollableChild;
        }
      }
    }

    v3 = v5++;
  }

  while ([(NSArray *)childFrames count]> v3);
  return v4;
}

- (BOOL)_hasScrollBars
{
  _scrollView = [(WebFrameView *)self _scrollView];
  if ([_scrollView hasHorizontalScroller])
  {
    return 1;
  }

  return [_scrollView hasVerticalScroller];
}

- (id)_largestChildWithScrollBars
{
  childFrames = [[(WebFrameView *)self webFrame] childFrames];
  if (![(NSArray *)childFrames count])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    _largestChildWithScrollBars = [-[NSArray objectAtIndex:](childFrames objectAtIndex:{v3), "frameView"}];
    if (([_largestChildWithScrollBars _hasScrollBars] & 1) == 0)
    {
      _largestChildWithScrollBars = [_largestChildWithScrollBars _largestChildWithScrollBars];
    }

    if (_largestChildWithScrollBars)
    {
      [_largestChildWithScrollBars _area];
      if (v7 >= 1.0)
      {
        if (!v4 || (v8 = v7, [v4 _area], v8 > v9))
        {
          v4 = _largestChildWithScrollBars;
        }
      }
    }

    v3 = v5++;
  }

  while ([(NSArray *)childFrames count]> v3);
  return v4;
}

- (id)_contentView
{
  _scrollView = [(WebFrameView *)self _scrollView];

  return [_scrollView contentView];
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