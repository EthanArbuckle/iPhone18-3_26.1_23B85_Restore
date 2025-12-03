@interface UIPDFPageContentTiledLayer
- (UIPDFPageContentTiledLayer)init;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)setNeedsDisplay;
- (void)setSelectionNeedsDisplay;
@end

@implementation UIPDFPageContentTiledLayer

- (UIPDFPageContentTiledLayer)init
{
  v6.receiver = self;
  v6.super_class = UIPDFPageContentTiledLayer;
  v2 = [(UIPDFPageContentTiledLayer *)&v6 init];
  if (v2)
  {
    CATransform3DMakeScale(&v5, 1.0, -1.0, 1.0);
    v4 = v5;
    [(UIPDFPageContentTiledLayer *)v2 setTransform:&v4];
    [(UIPDFPageContentTiledLayer *)v2 setOpaque:1];
    if (MGGetBoolAnswer())
    {
      [(UIPDFPageContentTiledLayer *)v2 setContentsFormat:*MEMORY[0x1E6979668]];
    }
  }

  return v2;
}

- (void)dealloc
{
  selectionLayer = self->_selectionLayer;
  if (selectionLayer)
  {
  }

  v4.receiver = self;
  v4.super_class = UIPDFPageContentTiledLayer;
  [(CATiledLayer *)&v4 dealloc];
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
  selectionLayer = self->_selectionLayer;
  if (selectionLayer)
  {
    [(CALayer *)selectionLayer setNeedsDisplay];
  }

  v4.receiver = self;
  v4.super_class = UIPDFPageContentTiledLayer;
  [(UIPDFPageContentTiledLayer *)&v4 setNeedsDisplay];
}

- (void)layoutSublayers
{
  delegate = [(UIPDFPageContentTiledLayer *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [delegate computeTransform];
    pageHasSelection = [v4 pageHasSelection];
    if (self->_selectionLayer)
    {
      if ((pageHasSelection & 1) == 0)
      {
        [(CALayer *)self->_selectionLayer removeFromSuperlayer];

        self->_selectionLayer = 0;
      }
    }

    else if (pageHasSelection)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6979398]);
      self->_selectionLayer = v6;
      [(CALayer *)v6 setDelegate:self];
      [(UIPDFPageContentTiledLayer *)self bounds];
      [(CALayer *)self->_selectionLayer setFrame:?];
      [(UIPDFPageContentTiledLayer *)self addSublayer:self->_selectionLayer];
      [(CALayer *)self->_selectionLayer setNeedsLayout];
      selectionLayer = self->_selectionLayer;

      [(CALayer *)selectionLayer setNeedsDisplay];
    }
  }
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  delegate = [(UIPDFPageContentTiledLayer *)self delegate];
  if (delegate)
  {

    [delegate drawSelectionLayer:layer inContext:context];
  }
}

@end