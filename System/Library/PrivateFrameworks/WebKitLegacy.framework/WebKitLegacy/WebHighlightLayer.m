@interface WebHighlightLayer
- (WebHighlightLayer)initWithHighlightView:(id)a3 webView:(id)a4;
- (void)layoutSublayers;
@end

@implementation WebHighlightLayer

- (WebHighlightLayer)initWithHighlightView:(id)a3 webView:(id)a4
{
  v7.receiver = self;
  v7.super_class = WebHighlightLayer;
  result = [(WebHighlightLayer *)&v7 init];
  if (result)
  {
    result->_view = a3;
    result->_webView = a4;
  }

  return result;
}

- (void)layoutSublayers
{
  [-[WebFrame documentView](-[WebView mainFrame](self->_webView "mainFrame")];
  CATransform3DMakeScale(&v4, v3, v3, 1.0);
  [(WebHighlightLayer *)self setTransform:&v4];
  [(WebNodeHighlightView *)self->_view layoutSublayers:self];
}

@end