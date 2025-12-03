@interface _UILabelLightInertLayer
- (void)drawInContext:(CGContext *)context;
@end

@implementation _UILabelLightInertLayer

- (void)drawInContext:(CGContext *)context
{
  superlayer = [(_UILabelLightInertLayer *)self superlayer];
  delegate = [superlayer delegate];
  [(_UILabelLightInertLayer *)self frame];
  v7 = v6;
  v9 = v8;
  [delegate _setDrawingLightInertLayer:1];
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, -v7, -v9);
  layer = [delegate layer];
  [layer drawInContext:context];

  CGContextRestoreGState(context);
  [delegate _setDrawingLightInertLayer:0];
}

@end