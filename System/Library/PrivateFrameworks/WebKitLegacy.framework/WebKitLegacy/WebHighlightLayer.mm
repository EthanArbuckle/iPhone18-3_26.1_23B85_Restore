@interface WebHighlightLayer
- (WebHighlightLayer)initWithHighlightView:(id)view webView:(id)webView;
- (void)layoutSublayers;
@end

@implementation WebHighlightLayer

- (WebHighlightLayer)initWithHighlightView:(id)view webView:(id)webView
{
  v7.receiver = self;
  v7.super_class = WebHighlightLayer;
  result = [(WebHighlightLayer *)&v7 init];
  if (result)
  {
    result->_view = view;
    result->_webView = webView;
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