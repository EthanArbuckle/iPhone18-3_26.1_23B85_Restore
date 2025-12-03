@interface UIPDFPageContentLayer
- (UIPDFPageContentLayer)init;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)setNeedsDisplay;
- (void)setSelectionNeedsDisplay;
@end

@implementation UIPDFPageContentLayer

- (UIPDFPageContentLayer)init
{
  v6.receiver = self;
  v6.super_class = UIPDFPageContentLayer;
  v2 = [(UIPDFPageContentLayer *)&v6 init];
  if (v2)
  {
    CATransform3DMakeScale(&v5, 1.0, -1.0, 1.0);
    v4 = v5;
    [(UIPDFPageContentLayer *)v2 setTransform:&v4];
    [(UIPDFPageContentLayer *)v2 setOpaque:1];
    if (MGGetBoolAnswer())
    {
      [(UIPDFPageContentLayer *)v2 setContentsFormat:*MEMORY[0x1E6979668]];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFPageContentLayer;
  [(UIPDFPageContentLayer *)&v3 dealloc];
}

- (void)setSelectionNeedsDisplay
{
  selectionLayer = self->_selectionLayer;
  if (selectionLayer)
  {
    [(CALayer *)selectionLayer setNeedsDisplay];
  }
}

- (void)setNeedsDisplay
{
  [(CALayer *)self->_selectionLayer setNeedsDisplay];
  v3.receiver = self;
  v3.super_class = UIPDFPageContentLayer;
  [(UIPDFPageContentLayer *)&v3 setNeedsDisplay];
}

- (void)layoutSublayers
{
  delegate = [(UIPDFPageContentLayer *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [delegate computeTransform];
    pageHasSelection = [v4 pageHasSelection];
    selectionLayer = self->_selectionLayer;
    if (pageHasSelection)
    {
      if (!selectionLayer)
      {
        v7 = objc_alloc_init(MEMORY[0x1E6979398]);
        self->_selectionLayer = v7;
        [(CALayer *)v7 setDelegate:self];
        [(UIPDFPageContentLayer *)self addSublayer:self->_selectionLayer];
      }

      [(UIPDFPageContentLayer *)self bounds];
      [(CALayer *)self->_selectionLayer setFrame:?];
      v8 = self->_selectionLayer;

      [(CALayer *)v8 setNeedsDisplay];
    }

    else if (selectionLayer)
    {
      [(CALayer *)selectionLayer removeFromSuperlayer];

      self->_selectionLayer = 0;
    }
  }
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  delegate = [(UIPDFPageContentLayer *)self delegate];
  if (delegate)
  {

    [delegate drawSelectionLayer:layer inContext:context];
  }
}

@end