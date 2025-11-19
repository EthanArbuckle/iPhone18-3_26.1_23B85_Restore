@interface WebNodeHighlight
- (WebNodeHighlight)initWithTargetView:(id)a3 inspectorController:(NakedPtr<WebCore::InspectorController>)a4;
- (void)attach;
- (void)dealloc;
- (void)detach;
- (void)setNeedsDisplay;
@end

@implementation WebNodeHighlight

- (WebNodeHighlight)initWithTargetView:(id)a3 inspectorController:(NakedPtr<WebCore::InspectorController>)a4
{
  v9.receiver = self;
  v9.super_class = WebNodeHighlight;
  v6 = [(WebNodeHighlight *)&v9 init];
  if (v6)
  {
    v6->_targetView = a3;
    v6->_inspectorController.m_ptr = *a4.m_ptr;
    v6->_highlightView = [[WebNodeHighlightView alloc] initWithWebNodeHighlight:v6];
    v7 = [[WebHighlightLayer alloc] initWithHighlightView:v6->_highlightView webView:a3];
    v6->_highlightLayer = v7;
    [-[WAKView window](v6->_targetView "window")];
    [(WebHighlightLayer *)v7 setContentsScale:?];
    [(WebHighlightLayer *)v6->_highlightLayer setCanDrawConcurrently:0];
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebNodeHighlight;
  [(WebNodeHighlight *)&v2 dealloc];
}

- (void)attach
{
  [objc_msgSend(-[WAKView window](self->_targetView "window")];
  [(WebNodeHighlight *)self setNeedsDisplay];
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate didAttachWebNodeHighlight:self];
  }
}

- (void)detach
{
  if (self->_highlightLayer)
  {
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate willDetachWebNodeHighlight:self];
      }
    }

    [(WebHighlightLayer *)self->_highlightLayer removeFromSuperlayer];

    self->_highlightLayer = 0;
    self->_targetView = 0;
    [(WebNodeHighlightView *)self->_highlightView detachFromWebNodeHighlight];

    self->_highlightView = 0;
  }
}

- (void)setNeedsDisplay
{
  [(WebHighlightLayer *)self->_highlightLayer setNeedsLayout];
  [(WebHighlightLayer *)self->_highlightLayer setNeedsDisplay];
  highlightLayer = self->_highlightLayer;

  [(WebHighlightLayer *)highlightLayer displayIfNeeded];
}

@end