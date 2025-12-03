@interface _UITileLayer
- (void)drawInContext:(CGContext *)context;
- (void)setNeedsDisplay;
@end

@implementation _UITileLayer

- (void)setNeedsDisplay
{
  atomic_store(0, &self->pendingDeferredOffscreenSetNeedsDisplay);
  v2.receiver = self;
  v2.super_class = _UITileLayer;
  [(_UITileLayer *)&v2 setNeedsDisplay];
}

- (void)drawInContext:(CGContext *)context
{
  superlayer = [(_UITileLayer *)self superlayer];
  [(_UITileLayer *)self frame];
  [superlayer _drawInContext:context offset:-[UIBezierPath CGPath](self->maskPath clip:{"CGPath"), v5, v6}];
}

@end