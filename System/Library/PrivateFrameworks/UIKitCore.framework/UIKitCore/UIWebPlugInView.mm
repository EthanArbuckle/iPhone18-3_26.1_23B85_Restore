@interface UIWebPlugInView
- (BOOL)respondsToSelector:(SEL)selector;
- (UIWebPlugInView)initWithWebView:(id)view plugInView:(id)inView;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)objectForWebScript;
- (id)pluginLayer;
- (void)_attachPluginLayerOnMainThread;
- (void)_connectPluginLayers;
- (void)_disconnectPluginLayers;
- (void)_reshapeOnMainThread;
- (void)_viewDidMoveToWindowOnMainThread;
- (void)attachPluginLayer;
- (void)dealloc;
- (void)detachPluginLayer;
- (void)drawRect:(CGRect)rect;
- (void)forwardInvocation:(id)invocation;
- (void)invalidateGState;
- (void)layout;
- (void)mouseDown:(id)down;
- (void)mouseUp:(id)up;
- (void)reshape;
- (void)setFrame:(CGRect)frame;
- (void)setFrameSize:(CGSize)size;
- (void)setWebView:(id)view;
- (void)viewDidMoveToWindow;
- (void)webPlugInDestroy;
- (void)webPlugInInitialize;
- (void)webPlugInStart;
- (void)webPlugInStop;
@end

@implementation UIWebPlugInView

- (UIWebPlugInView)initWithWebView:(id)view plugInView:(id)inView
{
  v6 = [(UIWebPlugInView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_webView = view;
    if (inView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7->_uiView = inView;
      if (objc_opt_respondsToSelector())
      {
        [(UIView *)v7->_uiView performSelector:sel_setWAKView_ withObject:v7];
      }

      v7->_parentedInLayer = 0;
      memset(&context, 0, sizeof(context));
      context.info = v7->_uiView;
      v7->_mainRunLoopDrawObserver = CFRunLoopObserverCreate(0, 0xA0uLL, 0, 2500000, MainRunLoopDidDraw, &context);
    }

    else
    {
      NSLog(&cfstr_PlugInViewIsNo.isa, inView);

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  Main = CFRunLoopGetMain();
  CFRunLoopRemoveObserver(Main, self->_mainRunLoopDrawObserver, *MEMORY[0x1E695E8D0]);
  CFRelease(self->_mainRunLoopDrawObserver);
  v4 = pthread_main_np();
  uiView = self->_uiView;
  if (v4 == 1)
  {
  }

  else
  {
    [(UIView *)uiView performSelectorOnMainThread:sel_release withObject:0 waitUntilDone:0];
  }

  v6.receiver = self;
  v6.super_class = UIWebPlugInView;
  [(UIWebPlugInView *)&v6 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIWebPlugInView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = UIWebPlugInView;
  [(UIWebPlugInView *)&v16 setFrame:x, y, width, height];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(UIWebPlugInView *)self reshape];
  }
}

- (void)setFrameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(UIWebPlugInView *)self frame];
  v7 = v6;
  v9 = v8;
  v11.receiver = self;
  v11.super_class = UIWebPlugInView;
  [(UIWebPlugInView *)&v11 setFrameSize:width, height];
  if (v7 != width || v9 != height)
  {
    [(UIWebPlugInView *)self reshape];
  }
}

- (void)viewDidMoveToWindow
{
  v4.receiver = self;
  v4.super_class = UIWebPlugInView;
  [(UIWebPlugInView *)&v4 viewDidMoveToWindow];
  if (objc_opt_respondsToSelector())
  {
    willEnterFullScreen = [(UIView *)self->_uiView willEnterFullScreen];
  }

  else
  {
    willEnterFullScreen = 0;
  }

  [(UIWebPlugInView *)self bounds];
  if (!CGRectIsEmpty(v5) || willEnterFullScreen)
  {
    WebThreadRunOnMainThread();
  }
}

- (void)invalidateGState
{
  v3.receiver = self;
  v3.super_class = UIWebPlugInView;
  [(UIWebPlugInView *)&v3 invalidateGState];
  [(UIWebPlugInView *)self reshape];
}

- (void)reshape
{
  if (WebThreadIsCurrent())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__UIWebPlugInView_reshape__block_invoke;
    block[3] = &unk_1E70F5CA0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([(UIWebPlugInView *)self window])
  {
    if (![(UIWebPlugInView *)self isParented])
    {
      [(UIWebPlugInView *)self viewDidMoveToWindow];
    }
  }
}

- (void)layout
{
  if (objc_opt_respondsToSelector())
  {
    uiView = self->_uiView;

    [(UIView *)uiView webPlugInLayout];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = WKGetCurrentGraphicsContext();
  if (CGContextGetType() == 1)
  {
    CGContextSaveGState(v8);
    if (self->_parentedInLayer)
    {
      [(UIWebDocumentView *)self->_webView _documentScale];
      CGContextScaleCTM(v8, 1.0 / v9, 1.0 / v9);
    }

    if (objc_opt_respondsToSelector())
    {
      UIGraphicsPushContext(v8);
      [(UIView *)self->_uiView drawRectForPrinting:x, y, width, height];
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }

    else
    {
      layer = [(UIView *)self->_uiView layer];
      v12 = GetContextStack(0);
      if (*v12 < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12[3 * (*v12 - 1) + 1];
      }

      [(CALayer *)layer renderInContext:v13];
    }

    CGContextRestoreGState(v8);
  }

  if (objc_opt_respondsToSelector())
  {
    Main = CFRunLoopGetMain();
    mainRunLoopDrawObserver = self->_mainRunLoopDrawObserver;
    v16 = *MEMORY[0x1E695E8D0];

    CFRunLoopAddObserver(Main, mainRunLoopDrawObserver, v16);
  }
}

- (void)webPlugInInitialize
{
  if (objc_opt_respondsToSelector())
  {
    uiView = self->_uiView;

    [(UIView *)uiView webPlugInInitialize];
  }
}

- (void)webPlugInStart
{
  if (objc_opt_respondsToSelector())
  {
    uiView = self->_uiView;

    [(UIView *)uiView webPlugInStart];
  }
}

- (void)webPlugInStop
{
  if (objc_opt_respondsToSelector())
  {
    uiView = self->_uiView;

    [(UIView *)uiView webPlugInStop];
  }
}

- (void)webPlugInDestroy
{
  if (objc_opt_respondsToSelector())
  {
    uiView = self->_uiView;

    [(UIView *)uiView webPlugInDestroy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = UIWebPlugInView;
  if ([(UIWebPlugInView *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  [invocation selector];
  if (objc_opt_respondsToSelector())
  {
    uiView = self->_uiView;

    [invocation invokeWithTarget:uiView];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIWebPlugInView;
    [(UIWebPlugInView *)&v6 forwardInvocation:invocation];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  result = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  if (!result)
  {
    uiView = self->_uiView;

    return [(UIView *)uiView methodSignatureForSelector:selector];
  }

  return result;
}

- (id)objectForWebScript
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  uiView = self->_uiView;

  return [(UIView *)uiView objectForWebScript];
}

- (void)mouseDown:(id)down
{
  downCopy = down;
  [WebThreadMakeNSInvocation() setArgument:&downCopy atIndex:2];
  WebThreadCallDelegate();
}

- (void)mouseUp:(id)up
{
  upCopy = up;
  [WebThreadMakeNSInvocation() setArgument:&upCopy atIndex:2];
  WebThreadCallDelegate();
}

- (void)setWebView:(id)view
{
  webView = self->_webView;
  if (webView != view)
  {
    if (webView)
    {
      [(UIWebDocumentView *)webView didRemovePlugInView:self];
    }

    self->_webView = view;
  }
}

- (id)pluginLayer
{
  if ([(UIWebPlugInView *)self isParentedInLayer])
  {
    return self->_hostingLayer;
  }

  else
  {
    return 0;
  }
}

- (void)_connectPluginLayers
{
  WebThreadLock();
  if (!self->_hostingLayer)
  {
    self->_hostingLayer = objc_alloc_init(MEMORY[0x1E6979398]);
  }

  [(CALayer *)[(UIView *)self->_webView layer] insertSublayer:self->_hostingLayer atIndex:0];
  if ([-[UIWebDocumentView webView](self->_webView "webView")])
  {
    [(UIWebPlugInView *)self setParentedInLayer:1];
    layer = [(UIView *)self->_uiView layer];
    v4 = layer;
    [(CALayer *)self->_hostingLayer addSublayer:layer];

    [(UIWebDocumentView *)self->_webView _setSubviewCachesNeedUpdate:1];

    [(UIWebPlugInView *)self _reshapeOnMainThread];
  }
}

- (void)_disconnectPluginLayers
{
  if ([(UIWebPlugInView *)self isParentedInLayer])
  {
    WebThreadLock();
    layer = [(UIView *)self->_uiView layer];
    v4 = layer;
    [-[UIWebDocumentView webView](self->_webView "webView")];
    [(CALayer *)[(UIView *)self->_webView layer] addSublayer:layer];

    [(UIWebPlugInView *)self setParentedInLayer:0];
    [(UIWebPlugInView *)self _reshapeOnMainThread];
    webView = self->_webView;

    [(UIWebDocumentView *)webView _setSubviewCachesNeedUpdate:1];
  }
}

- (void)_attachPluginLayerOnMainThread
{
  if (![(UIWebPlugInView *)self isParentedInLayer]&& self->_webView && [(UIView *)self->_uiView superview]== self->_webView)
  {

    [(UIWebPlugInView *)self _connectPluginLayers];
  }
}

- (void)attachPluginLayer
{
  if ([(UIWebPlugInView *)self willProvidePluginLayer])
  {
    if (WebThreadIsCurrent())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__UIWebPlugInView_attachPluginLayer__block_invoke;
      block[3] = &unk_1E70F5CA0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {

      [(UIWebPlugInView *)self _attachPluginLayerOnMainThread];
    }
  }
}

- (void)detachPluginLayer
{
  if ([(UIWebPlugInView *)self willProvidePluginLayer])
  {
    if (WebThreadIsCurrent())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__UIWebPlugInView_detachPluginLayer__block_invoke;
      block[3] = &unk_1E70F5CA0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {

      [(UIWebPlugInView *)self _detachPluginLayerOnMainThread];
    }
  }
}

- (void)_reshapeOnMainThread
{
  if (!self->_isFullScreen)
  {
    if (self->_parentedInLayer)
    {
      [(UIWebDocumentView *)self->_webView _documentScale];
      memset(&v9, 0, sizeof(v9));
      CGAffineTransformMakeScale(&v9, v3, v3);
      memset(&v8, 0, sizeof(v8));
      *&v7.m11 = *&v9.a;
      *&v7.m13 = *&v9.c;
      *&v7.m21 = *&v9.tx;
      CGAffineTransformInvert(&v8, &v7);
      hostingLayer = self->_hostingLayer;
      v6 = v8;
      CATransform3DMakeAffineTransform(&v7, &v6);
      [(CALayer *)hostingLayer setTransform:&v7];
      [(CALayer *)self->_hostingLayer bounds];
      *&v7.m11 = *&v9.a;
      *&v7.m13 = *&v9.c;
      *&v7.m21 = *&v9.tx;
      v12 = CGRectApplyAffineTransform(v11, &v7);
      v13 = CGRectIntegral(v12);
      [(UIView *)self->_uiView setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
    }

    else
    {
      [(UIWebPlugInView *)self bounds];
      [(UIWebPlugInView *)self convertRect:0 toView:?];
      v15 = CGRectIntegral(v14);
      uiView = self->_uiView;

      [(UIView *)uiView setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
    }
  }
}

- (void)_viewDidMoveToWindowOnMainThread
{
  if ([(UIWebPlugInView *)self window])
  {
    [(UIView *)self->_webView addSubview:self->_uiView];

    [(UIWebPlugInView *)self _connectPluginLayers];
  }

  else
  {
    [(UIWebPlugInView *)self _disconnectPluginLayers];
    [(UIView *)self->_uiView removeFromSuperview];

    self->_hostingLayer = 0;
    [(UIWebDocumentView *)self->_webView didRemovePlugInView:self];
    self->_webView = 0;
  }
}

@end