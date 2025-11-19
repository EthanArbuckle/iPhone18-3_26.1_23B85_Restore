@interface _UITileLayer
- (void)drawInContext:(CGContext *)a3;
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

- (void)drawInContext:(CGContext *)a3
{
  v7 = [(_UITileLayer *)self superlayer];
  [(_UITileLayer *)self frame];
  [v7 _drawInContext:a3 offset:-[UIBezierPath CGPath](self->maskPath clip:{"CGPath"), v5, v6}];
}

@end