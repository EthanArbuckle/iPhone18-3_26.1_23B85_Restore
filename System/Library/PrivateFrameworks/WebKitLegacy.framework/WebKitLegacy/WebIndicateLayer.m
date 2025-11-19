@interface WebIndicateLayer
- (WebIndicateLayer)initWithWebView:(id)a3;
- (void)layoutSublayers;
@end

@implementation WebIndicateLayer

- (WebIndicateLayer)initWithWebView:(id)a3
{
  v8.receiver = self;
  v8.super_class = WebIndicateLayer;
  v4 = [(WebIndicateLayer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_webView = a3;
    [(WebIndicateLayer *)v4 setCanDrawConcurrently:0];
    [-[WebView window](v5->_webView "window")];
    [(WebIndicateLayer *)v5 setContentsScale:?];
    WebCore::cachedCGColor();
    [(WebIndicateLayer *)v5 setBackgroundColor:cf];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v5;
}

- (void)layoutSublayers
{
  [-[WebFrame documentView](-[WebView mainFrame](self->_webView "mainFrame")];
  CATransform3DMakeScale(&v4, v3, v3, 1.0);
  [(WebIndicateLayer *)self setTransform:&v4];
  [(WebView *)self->_webView frame];
  [(WebIndicateLayer *)self setFrame:?];
}

@end