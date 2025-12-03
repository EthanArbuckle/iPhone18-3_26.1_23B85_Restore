@interface WebNodeHighlighter
- (WebNodeHighlighter)initWithInspectedWebView:(id)view;
- (void)dealloc;
- (void)hideHighlight;
- (void)highlight;
@end

@implementation WebNodeHighlighter

- (WebNodeHighlighter)initWithInspectedWebView:(id)view
{
  v5.receiver = self;
  v5.super_class = WebNodeHighlighter;
  result = [(WebNodeHighlighter *)&v5 init];
  if (result)
  {
    result->_inspectedWebView = view;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebNodeHighlighter;
  [(WebNodeHighlighter *)&v2 dealloc];
}

- (void)highlight
{
  inspectedWebView = self->_inspectedWebView;
  if ([inspectedWebView window])
  {
    currentHighlight = self->_currentHighlight;
    if (currentHighlight)
    {

      [(WebNodeHighlight *)currentHighlight setNeedsDisplay];
    }

    else
    {
      v5 = [WebNodeHighlight alloc];
      [self->_inspectedWebView page];
      v8 = *(v7 + 88);
      v6 = [(WebNodeHighlight *)v5 initWithTargetView:inspectedWebView inspectorController:&v8];
      self->_currentHighlight = v6;
      [(WebNodeHighlight *)v6 setDelegate:self];
      [(WebNodeHighlight *)self->_currentHighlight attach];
    }
  }
}

- (void)hideHighlight
{
  [(WebNodeHighlight *)self->_currentHighlight detach];
  [(WebNodeHighlight *)self->_currentHighlight setDelegate:0];

  self->_currentHighlight = 0;
}

@end