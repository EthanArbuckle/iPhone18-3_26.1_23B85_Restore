@interface TSWPTextMagnifierRenderer
- (TSWPTextMagnifierRenderer)initWithFrame:(CGRect)frame;
- (id)p_createChildLayer;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSubviews;
- (void)setAutoscrollDirections:(int)directions;
- (void)setNeedsDisplay;
- (void)tearDown;
@end

@implementation TSWPTextMagnifierRenderer

- (TSWPTextMagnifierRenderer)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TSWPTextMagnifierRenderer;
  v3 = [(TSWPTextMagnifierRenderer *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TSWPTextMagnifierRenderer *)v3 setUserInteractionEnabled:0];
    [(TSWPTextMagnifierRenderer *)v4 setOpaque:0];
  }

  return v4;
}

- (void)dealloc
{
  [(TSWPTextMagnifierRenderer *)self tearDown];
  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierRenderer;
  [(TSWPTextMagnifierRenderer *)&v3 dealloc];
}

- (void)tearDown
{
  underlayLayer = self->_underlayLayer;
  if (underlayLayer)
  {
    [(CALayer *)underlayLayer setDelegate:0];
    [(CALayer *)self->_underlayLayer removeFromSuperlayer];

    self->_underlayLayer = 0;
  }

  [(CALayer *)self->_canvasLayer setDelegate:0];
  [(CALayer *)self->_canvasLayer removeFromSuperlayer];

  self->_canvasLayer = 0;
  [(CALayer *)self->_overlayLayer setDelegate:0];
  [(CALayer *)self->_overlayLayer removeFromSuperlayer];

  self->_overlayLayer = 0;
}

- (void)setAutoscrollDirections:(int)directions
{
  if (self->_autoscrollDirections != directions)
  {
    v9 = v3;
    self->_autoscrollDirections = directions;
    v8 = 0.800000012;
    if (!directions)
    {
      v8 = 1.0;
    }

    [(TSWPTextMagnifierRenderer *)self setAlpha:v8, v4, v9, v5];
    [(TSWPTextMagnifierRenderer *)self setNeedsLayout];

    [(TSWPTextMagnifierRenderer *)self setNeedsDisplay];
  }
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierRenderer;
  [(TSWPTextMagnifierRenderer *)&v3 setNeedsDisplay];
  [(CALayer *)self->_canvasLayer setNeedsDisplay];
}

- (id)p_createChildLayer
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v3 setDelegate:self];
  [v3 setOpaque:0];
  [(TSWPTextMagnifierRenderer *)self bounds];
  [v3 setFrame:?];
  TSUScreenScale();
  [v3 setContentsScale:?];
  return v3;
}

- (void)layoutSubviews
{
  if (self->_underlayLayer || ![(TSWPTextMagnifierRendererDelegate *)self->_delegate underlayImageName])
  {
    v3 = 0;
  }

  else
  {
    self->_underlayLayer = [(TSWPTextMagnifierRenderer *)self p_createChildLayer];
    -[CALayer setContents:](self->_underlayLayer, "setContents:", [objc_msgSend(MEMORY[0x277D755B8] imageNamed:-[TSWPTextMagnifierRendererDelegate underlayImageName](self->_delegate inBundle:"underlayImageName") compatibleWithTraitCollection:{TSWPBundle(), 0), "CGImage"}]);
    [-[TSWPTextMagnifierRenderer layer](self "layer")];
    v3 = 1;
  }

  if (!self->_canvasLayer)
  {
    self->_canvasLayer = [(TSWPTextMagnifierRenderer *)self p_createChildLayer];
    -[CALayer setBackgroundColor:](self->_canvasLayer, "setBackgroundColor:", [objc_msgSend(MEMORY[0x277D75348] "clearColor")]);
    [-[TSWPTextMagnifierRenderer layer](self "layer")];
    v3 = (v3 + 1);
  }

  if (!self->_overlayLayer)
  {
    self->_overlayLayer = [(TSWPTextMagnifierRenderer *)self p_createChildLayer];
    -[CALayer setContents:](self->_overlayLayer, "setContents:", [objc_msgSend(MEMORY[0x277D755B8] imageNamed:-[TSWPTextMagnifierRendererDelegate overlayImageName](self->_delegate inBundle:"overlayImageName") compatibleWithTraitCollection:{TSWPBundle(), 0), "CGImage"}]);
    [-[TSWPTextMagnifierRenderer layer](self "layer")];
  }

  if ([(TSWPTextMagnifierRendererDelegate *)self->_delegate shouldHideCanvasLayer])
  {
    v4 = [(TSWPTextMagnifierRenderer *)self autoscrollDirections]!= 0;
  }

  else
  {
    v4 = 0;
  }

  [(CALayer *)self->_canvasLayer setHidden:v4];

  [(TSWPTextMagnifierRenderer *)self setNeedsDisplay];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  canvasLayer = self->_canvasLayer;
  if (canvasLayer == layer && ![(CALayer *)canvasLayer isHidden])
  {
    delegate = self->_delegate;

    [(TSWPTextMagnifierRendererDelegate *)delegate drawMagnifierClippedCanvasLayer:layer inContext:context];
  }
}

@end